class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :born

      t.timestamps null: false
    end
  end
end
