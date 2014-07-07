class CreateBloodstocks < ActiveRecord::Migration
  def change
    create_table :bloodstocks do |t|
      t.string  :bloodcomponentid
      t.integer :bloodbank_id
      t.string  :bloodgroupid
      t.integer :units
      
      t.timestamps
    end
  end
end
