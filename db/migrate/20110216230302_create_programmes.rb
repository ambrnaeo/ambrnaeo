class CreateProgrammes < ActiveRecord::Migration
  def self.up
    create_table :programmes do |t|
      t.string :title
      t.string :pid
      t.string :short_synopsis
      t.string :medium_synopsis
      t.string :long_synopsis
      t.integer :duration
      t.string :image_url
      t.string :source_radio_station
      t.timestamps
    end
  end

  def self.down
    drop_table :programmes
  end
end
