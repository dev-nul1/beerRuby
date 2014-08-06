class Malt < ActiveRecord::Base
	belongs_to :recipe
	def self.import(file)
		if file == nil
			return
		end
		CSV.foreach(file.path, headers: true) do |row|
			malt = find_by_id(row["id"]) || new
			malt.attributes = row.to_hash.slice(*Malt.attribute_names())
			malt.save!
		end
	end
end
