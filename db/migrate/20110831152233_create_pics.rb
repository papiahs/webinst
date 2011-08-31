class CreatePics < ActiveRecord::Migration
  def self.up
    create_table :pics do |t|
      t.string :titulo
      t.string :nombre
      t.string :tipo
      t.binary :data, :limit => 1.megabyte

      t.timestamps
    end
  end

  def self.down
    drop_table :pics
  end
end
