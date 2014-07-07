class AddCity < ActiveRecord::Migration
  def change
  	add_column :bloodbanks, :city, :string
  end
end
