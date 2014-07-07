class CreateBloodbanks < ActiveRecord::Migration
  def change
    create_table :bloodbanks do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :email
      t.string :mobile
      t.string :website
      t.string :landline
      t.string :varificationstatus

      t.timestamps
    end
  end
end
