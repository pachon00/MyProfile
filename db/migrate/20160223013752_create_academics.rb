class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :grade

      t.timestamps null: false
    end
  end
end
