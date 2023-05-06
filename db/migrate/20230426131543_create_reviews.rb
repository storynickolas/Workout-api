class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :write_up
      t.integer :workout_id

      t.timestamps
    end
  end
end
