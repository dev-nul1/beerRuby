class CreateMalts < ActiveRecord::Migration
  def change
    create_table :malts do |t|
      t.string :maltName
      t.string :maltLovibond
      t.string :maltInfo
      t.string :maltCategory
      t.string :maltYield
      t.integer :maltOrigin
      t.integer :maltSupplier
      t.string :maltType

      t.timestamps
    end
  end
end
