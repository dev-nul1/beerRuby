class FixMaltsColumnName < ActiveRecord::Migration
  def change
  	change_table :malts do |f|
	   	f.rename :maltName, :malt_name
		f.rename :maltLovibond, :malt_lovibond
		f.rename :maltInfo, :malt_info
		f.rename :maltCategory, :malt_category
		f.rename :maltYield, :malt_yield
		f.rename :maltOrigin, :malt_origin
		f.rename :maltSupplier, :malt_supplier
		f.rename :maltType, :malt_type
	end
  end
end
