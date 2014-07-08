class Hop < ActiveRecord::Base
def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
	Hop.create! row.to_hash
  end
end
end
