class FixYeastsColumnName < ActiveRecord::Migration
  def change
  	change_table :yeasts do |y|
		y.rename :yeastName , :yeast_name
		y.rename :yeastFloc, :yeast_floc
		y.rename :yeastAtten, :yeast_atten
		y.rename :yeastTolerance, :yeast_tolerance
		y.rename :yeastType, :yeast_type
		y.rename :yeastForm, :yeast_form
		y.rename :yeastAmount, :yeast_amount
		y.rename :yeastLab, :yeast_lab
		y.rename :yeastProdID, :yeast_prod_id
		y.rename :yeastMinTemp, :yeast_min_temp
		y.rename :yeastMaxTemp, :yeast_max_temp
		y.rename :yeastNotes, :yeast_notes
		y.rename :yeastBestFor, :yeast_best_for
		y.rename :yeastMaxReuse, :yeast_max_reuse
		end
  end
end
