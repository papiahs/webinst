class CreateArts < ActiveRecord::Migration
  def self.up
    create_table :arts do |t|
      t.string :titulo
      t.text :resumen
      t.text :contenido

      t.timestamps
    end
    create_table :arts_refs, :id => false do |t|
      t.integer :art_id
      t.integer :ref_id
    end
    create_table :arts_pics, :id => false do |t|
      t.integer :art_id
      t.integer :pic_id
    end
    create_table :arts_autors, :id => false do |t|
      t.integer :autor_id
      t.integer :art_id
    end
  end

  def self.down
    drop_table :arts
    drop_table :arts_autors
    drop_table :arts_pics
    drop_table :arts_refs
  end
end
