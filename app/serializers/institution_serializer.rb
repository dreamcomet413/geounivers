class InstitutionSerializer < ActiveModel::Serializer
  attributes :id, :identify_id, :name, :address, :city, :state, :zip, :phone, :opeid, :ipeds_unitid, :web_address, 
  			 :campus_id, :campus_name, :campus_address, :campus_city, :campus_state, :campus_zip, :campus_ipeds_unitid, 
  			 :accreditation_type, :agency_name, :agency_status, :program_name, :accreditation_status, :accreditation_date_type, 
  			 :periods, :last_action, :action_date, :justification, :other_justification, :justification_url
end
