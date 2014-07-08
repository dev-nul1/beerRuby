class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :hopsName
      t.string :hopsGrown
      t.string :hopsInfo
      t.string :hopsUse
      t.string :hopsExample
      t.integer :hopsAAULow
      t.integer :hopsAAUHigh
      t.string :hopsSub

      t.timestamps
    end
  end
end
