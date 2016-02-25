class AddProfileIdToWorks < ActiveRecord::Migration
  def change
    add_reference :works, :profile, index: true, foreign_key: true
  end
end
