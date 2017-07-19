class AddLatitudeAndLongitudeToInstitution < ActiveRecord::Migration[5.1]
  def change
    add_column :institutions, :latitude, :float
    add_column :institutions, :longitude, :float
  end
end
