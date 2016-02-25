class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.integer :porcent

      t.timestamps null: false
    end
  end
end
