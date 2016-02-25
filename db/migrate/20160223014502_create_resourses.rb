class CreateResourses < ActiveRecord::Migration
  def change
    create_table :resourses do |t|
      t.string :resoursestype
      t.string :name
      t.string :email
      t.string :website

      t.timestamps null: false
    end
  end
end
