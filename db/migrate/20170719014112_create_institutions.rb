class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.integer :identify_id
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :opeid
      t.string :ipeds_unitid
      t.string :web_address
      t.integer :campus_id
      t.string :campus_name
      t.string :campus_address
      t.string :campus_city
      t.string :campus_state
      t.string :campus_zip
      t.string :campus_ipeds_unitid
      t.string :accreditation_type
      t.string :agency_name
      t.string :agency_status
      t.string :program_name
      t.string :accreditation_status
      t.string :accreditation_date_type
      t.string :periods
      t.string :last_action
      t.datetime :action_date
      t.string :justification
      t.string :other_justification
      t.string :justification_url

      t.timestamps
    end
  end
end
