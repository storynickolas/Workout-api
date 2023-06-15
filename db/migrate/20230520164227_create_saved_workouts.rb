class CreateSavedWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_workouts do |t|
      t.belongs_to :user
      t.belongs_to :workout

      t.timestamps
    end
  end
end
