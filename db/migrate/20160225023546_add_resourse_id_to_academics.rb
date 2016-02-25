class AddResourseIdToAcademics < ActiveRecord::Migration
  def change
    add_reference :academics, :resourse, index: true, foreign_key: true
  end
end
