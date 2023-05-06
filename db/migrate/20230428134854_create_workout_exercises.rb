class CreateWorkoutExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_exercises do |t|
      t.belongs_to :exercise
      t.belongs_to :workout
      t.integer :reps 
      t.integer :sets

      t.timestamps
    end
  end
end
