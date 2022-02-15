
#Ajout des de city_id dans User

class AddReferencesUserCities < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :city, foreign_key: true
  end
end
