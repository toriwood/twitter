class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.integer :movie_id

      t.timestamps null: false
    end
  end
end
