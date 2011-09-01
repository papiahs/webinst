class CreateAutors < ActiveRecord::Migration
  def self.up
    create_table :autors do |t|
      t.string :nombre
      t.string :especialidad
      t.integer :pic_id

      t.timestamps
    end
  end

  def self.down
    drop_table :autors
  end
end
