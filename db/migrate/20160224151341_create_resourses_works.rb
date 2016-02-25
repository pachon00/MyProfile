class CreateResoursesWorks < ActiveRecord::Migration
  def change
    create_table :resourses_works, :id => false do |t|
    	t.integer :resourse_id
    	t.integer :work_id
    end
    add_index :resourses_works, :resourse_id
    add_index :resourses_works, :work_id
  end
end
