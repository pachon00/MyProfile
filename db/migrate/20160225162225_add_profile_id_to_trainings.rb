class AddProfileIdToTrainings < ActiveRecord::Migration
  def change
    add_reference :trainings, :profile, index: true, foreign_key: true
  end
end
