class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :time
      t.integer :user_id

      t.timestamps
    end
  end
end
