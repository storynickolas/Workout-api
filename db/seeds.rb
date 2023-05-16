# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "Test", password_digest: "Test", bio: "Test")

Exercise.create!(name: 'Dumbbell Row', muscle_group: "Back", video: 'https://www.youtube.com/embed/roCP6wCXPqo')
Exercise.create!(name: 'Tbar row ', muscle_group: "Back", video: 'https://www.youtube.com/embed/KDEl3AmZbVE')
Exercise.create!(name: 'Hammer Curl', muscle_group: "Biceps", video: 'https://www.youtube.com/embed/CFBZ4jN1CMI')
Exercise.create!(name: 'Barbell Curl', muscle_group: "Biceps", video: 'https://www.youtube.com/embed/dDI8ClxRS04')

Exercise.create!(name: 'Incline dumbbell bench', muscle_group: "Chest", video: 'https://www.youtube.com/embed/8nNi8jbbUPE')
Exercise.create!(name: 'Incline dumbbell flys', muscle_group: "Chest", video: 'https://youtube.com/embed/beazxb8q-SA')
Exercise.create!(name: 'Skull crushers', muscle_group: "Triceps", video: 'https://www.youtube.com/embed/NIWKqcmpBug')
Exercise.create!(name: 'Overhead Dumbbell Tricep Extension', muscle_group: "Triceps", video: 'https://youtube.com/embed/LlCFtWCQc5s')

Workout.create!(name: "Back & Biceps", time: 60)
Workout.create!(name: "Chest & Triceps", time: 60)

WorkoutExercise.create!(exercise_id: 1, workout_id: 1, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 2, workout_id: 1, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 3, workout_id: 1, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 4, workout_id: 1, reps: 12, sets: 4)

WorkoutExercise.create!(exercise_id: 5, workout_id: 2, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 6, workout_id: 2, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 7, workout_id: 2, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 8, workout_id: 2, reps: 12, sets: 4)

Schedule.create!(user_id: 1)


WorkoutDay.create!(schedule_id: 1, workout_id: 1, day: "Monday")
WorkoutDay.create!(schedule_id: 1, workout_id: 2, day: "Wednesday")

Review.create!(workout_id: 2, rating: 5, write_up: "A go-to to weekly workout")
Review.create!(workout_id: 1, rating: 1, write_up: "I like having noodle arms")


