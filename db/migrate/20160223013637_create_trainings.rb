class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name
      t.integer :porcent
      t.date :start_date
      t.date :end_date
      t.string :level

      t.timestamps null: false
    end
  end
end
