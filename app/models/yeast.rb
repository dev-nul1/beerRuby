class Yeast < ActiveRecord::Base
	belongs_to :recipe
	def self.import(file)
		if file == nil
			return
		end
		CSV.foreach(file.path, headers: true) do |row|
			yeast = find_by_id(row["id"]) || new
			yeast.attributes = row.to_hash.slice(*Yeast.attribute_names())
			yeast.save!
		end
	end
end
