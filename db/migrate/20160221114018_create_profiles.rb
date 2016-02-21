class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :summary
      t.string :phone
      t.string :cell_phone
      t.string :email
      t.string :city
      t.string :estate
      t.date :birthday

      t.timestamps null: false
    end
  end
end
