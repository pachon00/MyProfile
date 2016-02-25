class AddResourseIdToWorks < ActiveRecord::Migration
  def change
    add_reference :works, :resourse, index: true, foreign_key: true
  end
end
