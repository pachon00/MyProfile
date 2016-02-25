class AddLogoToResourses < ActiveRecord::Migration
  
  def change
  	  change_table :resourses do |t|
      	t.attachment :logo
  	end
  end

end
