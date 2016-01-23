class FixColumnName < ActiveRecord::Migration
  def change
	change_table :products do |t|
	    t.rename :titile, :title
	end
  end
end
