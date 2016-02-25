class AddProfileIdToAcademics < ActiveRecord::Migration
  def change
    add_reference :academics, :profile, index: true, foreign_key: true
  end
end
