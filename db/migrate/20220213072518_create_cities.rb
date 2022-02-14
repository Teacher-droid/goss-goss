class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      
      t.string :name
      t.string :zip_code
      

      t.timestamps
    end

    add_reference :users, :city, foreign_key: true

  end
end
