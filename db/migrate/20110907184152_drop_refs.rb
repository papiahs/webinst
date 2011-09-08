class DropRefs < ActiveRecord::Migration
  def self.up
    drop_table :refs
    create_table :refs do |t|
      t.string :titulo
      t.string :detalle
      t.integer :pic_id
    
      t.timestamps
    end
  end

  def self.down
    drop_table :refs
  end
end
