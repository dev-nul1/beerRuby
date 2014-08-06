class Hop < ActiveRecord::Base
belongs_to :recipe
  
  def self.import(file)
  if file == nil
      return
  end
  CSV.foreach(file.path, headers: true) do |row|
    hop = find_by_id(row["id"]) || new
    hop.attributes = row.to_hash.slice(*Hop.attribute_names())
    hop.save!
  end
end
end
