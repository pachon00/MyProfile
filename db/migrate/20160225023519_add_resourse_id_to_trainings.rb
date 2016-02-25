class AddResourseIdToTrainings < ActiveRecord::Migration
  def change
    add_reference :trainings, :resourse, index: true, foreign_key: true
  end
end
