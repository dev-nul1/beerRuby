class CreateYeasts < ActiveRecord::Migration
  def change
    create_table :yeasts do |t|
      t.string :yeastName
      t.string :yeastFloc
      t.string :yeastAtten
      t.string :yeastTolerance
      t.string :yeastType
      t.string :yeastForm
      t.integer :yeastAmount
      t.string :yeastLab
      t.string :yeastProdID
      t.integer :yeastMinTemp
      t.integer :yeastMaxTemp
      t.string :yeastNotes
      t.string :yeastBestFor
      t.integer :yeastMaxReuse

      t.timestamps
    end
  end
end
