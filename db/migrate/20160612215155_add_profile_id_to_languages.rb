class AddProfileIdToLanguages < ActiveRecord::Migration
  def change
    add_reference :languages, :profile, index: true, foreign_key: true
  end
end
