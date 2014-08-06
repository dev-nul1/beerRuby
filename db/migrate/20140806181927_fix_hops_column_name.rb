class FixHopsColumnName < ActiveRecord::Migration
  def change
  	change_table :hops do |t|
	  	t.rename :hopsName, :hops_name
	  	t.rename :hopsGrown, :hops_grown
	  	t.rename :hopsInfo, :hops_info
	  	t.rename :hopsUse, :hops_use
	  	t.rename :hopsExample, :hops_example
	  	t.rename :hopsAAULow, :hops_aau_low
	  	t.rename :hopsAAUHigh, :hops_aau_high
	  	t.rename :hopsSub, :hops_sub
	  	end
  end
end
