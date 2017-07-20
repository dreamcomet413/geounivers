require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Accreditation_04_2017.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  institution = Institution.new
  
  institution.identify_id = row['Institution_ID']
  institution.name = row['Institution_Name']
  institution.address = row['Institution_Address']
  institution.city = row['Institution_City']
  institution.state = row['Institution_State']
  institution.zip = row['Institution_Zip']
  institution.phone = row['Institution_Phone']
  institution.opeid = row['Institution_OPEID']
  institution.ipeds_unitid = row['Institution_IPEDS_UnitID']
  institution.web_address = row['Institution_Web_Address']
  institution.campus_id = row['Campus_ID']
  institution.campus_name = row['Campus_Name']
  institution.campus_address = row['Campus_Address']
  institution.campus_city = row['Campus_City']
  institution.campus_state = row['Campus_State']
  institution.campus_zip = row['Campus_Zip']
  institution.campus_ipeds_unitid = row['Campus_IPEDS_UnitID']
  institution.accreditation_type = row['Accreditation_Type']
  institution.agency_name = row['Agency_Name']
  institution.agency_status = row['Agency_Status']
  institution.program_name = row['Program_Name']
  institution.accreditation_status = row['Accreditation_Status']
  institution.accreditation_date_type = row['Accreditation_Date_Type']
  institution.periods = row['Periods']
  institution.last_action = row['Last Action']
  institution.action_date = row['Action Date']
  institution.justification = row['Justification']
  institution.other_justification = row['Other_Justification']
  institution.justification_url = row['Justification_Url']
  
  puts "#{institution.address}, #{institution.city}, #{institution.state}"
  puts "-------------------------------------------------------------------"
  
  full_address = "#{institution.address}, " + "#{institution.city}, " + "#{institution.state}"
  result = Geocoder.coordinates(full_address)

  if result.nil?
    institution.latitude = nil
    institution.longitude = nil
  else
    institution.latitude = result[0]
    institution.longitude = result[1]
  end

  puts "Latitude = " + "#{institution.latitude}, Longitude = " + "#{institution.longitude}"

  institution.save
end

puts "There are now #{Institution.count} rows in the institutions table"


