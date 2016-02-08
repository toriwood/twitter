class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
