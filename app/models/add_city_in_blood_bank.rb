class AddCityInBloodBank < ActiveRecord::Base
	def change
    create_table :bloodbank do |t|
      t.string :city
    end
  end
end
