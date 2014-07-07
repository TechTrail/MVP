class CreateAddCityInBloodBanks < ActiveRecord::Migration
  def change
    create_table :add_city_in_blood_banks do |t|
      t.string :city

      t.timestamps
    end
  end
end
