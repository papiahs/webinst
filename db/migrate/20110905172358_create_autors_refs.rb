class CreateAutorsRefs < ActiveRecord::Migration
  def self.up
    create_table :autors_refs, :id => false do |t|
      t.integer :autor_id
      t.integer :ref_id
    end
  end

  def self.down
  end
end
