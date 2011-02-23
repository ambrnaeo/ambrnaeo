class CreateProgpositions < ActiveRecord::Migration
  def self.up
    create_table :progpositions do |t|
      t.integer :channel_id
      t.integer :programme_id
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :progpositions
  end
end
