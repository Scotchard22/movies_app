class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.string :description
      t.integer :length

      t.timestamps null: false
    end
  end
end
