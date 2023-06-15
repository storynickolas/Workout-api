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
Exercise.create!(name: 'Barbell Squat', muscle_group: "Legs", video: 'https://www.youtube.com/embed/R2dMsNhN3DE')
Exercise.create!(name: 'Straight Let Deadlift', muscle_group: "Legs", video: 'https://www.youtube.com/embed/CkrqLaDGvOA')
Exercise.create!(name: 'Barbell Deadlift', muscle_group: "Legs", video: 'https://www.youtube.com/embed/a5zhnubunoE')
Exercise.create!(name: 'Barbell Calf Raises', muscle_group: "Legs", video: 'https://www.youtube.com/embed/3UWi44yN-wM')
Exercise.create!(name: 'Kettlebell Squat', muscle_group: "Legs", video: 'https://www.youtube.com/embed/XGJvb8waI98')
Exercise.create!(name: 'Front Squat', muscle_group: "Legs", video: 'https://www.youtube.com/embed/I5GaxSYLCSc')
Exercise.create!(name: 'Pull Ups', muscle_group: "Back", video: 'https://www.youtube.com/embed/ylVmNQlKdAI')
Exercise.create!(name: 'Turkish Get-Ups', muscle_group: "Full Body", video: 'https://www.youtube.com/embed/saYKvqSscuY')
Exercise.create!(name: 'Reverse Curl', muscle_group: "Biceps", video: 'https://www.youtube.com/embed/yIUKi1goT-g')
Exercise.create!(name: 'Preacher Curl', muscle_group: "Biceps", video: 'https://www.youtube.com/embed/fIWP-FRFNU0')
Exercise.create!(name: 'Cable Row', muscle_group: "Back", video: 'https://www.youtube.com/embed/IzoCF_b3cIY')
Exercise.create!(name: 'Wide Grip Lat Pull Down', muscle_group: "Back", video: 'https://www.youtube.com/embed/lueEJGjTuPQ')
Exercise.create!(name: 'Close Grip Lat Pull Down', muscle_group: "Back", video: 'https://www.youtube.com/embed/ecRF8ERf2q4')
Exercise.create!(name: 'Dumbbell lunges', muscle_group: "Legs", video: 'https://www.youtube.com/embed/auyE2hZGB9k')
Exercise.create!(name: 'Dumbbell Shoulder Press', muscle_group: "Legs", video: 'https://www.youtube.com/embed/0JfYxMRsUCQ')
Exercise.create!(name: 'Barbbell Bench', muscle_group: "Chest", video: 'https://www.youtube.com/embed/EUjh50tLlBo')
Exercise.create!(name: 'Barbbell Row', muscle_group: "Back", video: 'https://www.youtube.com/embed/-xlBxIMqh3A')
Exercise.create!(name: 'Seated Overhead Press', muscle_group: "Back", video: 'https://www.youtube.com/embed/lPFwcHl0a2c')
Exercise.create!(name: 'Plank', muscle_group: "Abs", video: 'https://www.youtube.com/embed/ASdvN_XEl_c')
Exercise.create!(name: 'Dumbbell Goblet Squat', muscle_group: "Legs", video: 'https://www.youtube.com/embed/5Y3KW5rWMh4')
Exercise.create!(name: 'Single Arm Kettlebell Press', muscle_group: "Shoulders", video: 'https://www.youtube.com/embed/gjr-QAdsq4o')
Exercise.create!(name: 'Kettlebell Swing', muscle_group: "Legs", video: 'youtube.com/embed/sSESeQAir2M')
Exercise.create!(name: 'Kettlebell Snatch', muscle_group: "Full Body", video: 'https://www.youtube.com/embed/ZQccQg4kDf8')
Exercise.create!(name: 'Kettlebell Push Up', muscle_group: "Chest", video: 'https://www.youtube.com/embed/tHYPbE7QM-g')

Workout.create!(name: "Back & Biceps", time: 60, user_id: 1)
Workout.create!(name: "Chest & Triceps", time: 60, user_id: 1)


WorkoutExercise.create!(exercise_id: 1, workout_id: 1, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 2, workout_id: 1, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 3, workout_id: 1, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 4, workout_id: 1, reps: 12, sets: 4)

WorkoutExercise.create!(exercise_id: 5, workout_id: 2, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 6, workout_id: 2, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 7, workout_id: 2, reps: 12, sets: 4)
WorkoutExercise.create!(exercise_id: 8, workout_id: 2, reps: 12, sets: 4)


Workout.create!(name: "5x5 Workout A", time: 75, user_id: 1)

WorkoutExercise.create!(exercise_id: 9, workout_id: 3, reps: 5, sets: 5)
WorkoutExercise.create!(exercise_id: 24, workout_id: 3, reps: 5, sets: 5)
WorkoutExercise.create!(exercise_id: 25, workout_id: 3, reps: 5, sets: 5)

Workout.create!(name: "5x5 Workout B", time: 75, user_id: 1)

WorkoutExercise.create!(exercise_id: 9, workout_id: 4, reps: 5, sets: 5)
WorkoutExercise.create!(exercise_id: 26, workout_id: 4, reps: 5, sets: 5)
WorkoutExercise.create!(exercise_id: 11, workout_id: 4, reps: 5, sets: 5)

Workout.create!(name: "Dumbbell Minimalist A", time: 60, user_id: 1)

WorkoutExercise.create!(exercise_id: 27, workout_id: 5, reps: 60, sets: 10)
WorkoutExercise.create!(exercise_id: 20, workout_id: 5, reps: 10, sets: 3)
WorkoutExercise.create!(exercise_id: 5, workout_id: 5, reps: 10, sets: 3)
WorkoutExercise.create!(exercise_id: 22, workout_id: 5, reps: 10, sets: 3)

Workout.create!(name: "Dumbbell Minimalist B", time: 60, user_id: 1)
WorkoutExercise.create!(exercise_id: 27, workout_id: 6, reps: 60, sets: 10)
WorkoutExercise.create!(exercise_id: 28, workout_id: 6, reps: 10, sets: 3)
WorkoutExercise.create!(exercise_id: 23, workout_id: 6, reps: 10, sets: 3)
WorkoutExercise.create!(exercise_id: 25, workout_id: 6, reps: 10, sets: 3)

Workout.create!(name: "20 minute kettle bell AMRAP", time: 20, user_id: 1)
WorkoutExercise.create!(exercise_id: 29, workout_id: 7, reps: 5, sets: 0)
WorkoutExercise.create!(exercise_id: 13, workout_id: 7, reps: 10, sets: 0)
WorkoutExercise.create!(exercise_id: 30, workout_id: 7, reps: 20, sets: 0)

Workout.create!(name: "20x15x10x5 Kettlebell Circuit Workout", time: 60, user_id: 1)
WorkoutExercise.create!(exercise_id: 13, workout_id: 8, reps: 20, sets: 4)
WorkoutExercise.create!(exercise_id: 31, workout_id: 8, reps: 20, sets: 4)
WorkoutExercise.create!(exercise_id: 22, workout_id: 8, reps: 20, sets: 4)
WorkoutExercise.create!(exercise_id: 32, workout_id: 8, reps: 20, sets: 4)
WorkoutExercise.create!(exercise_id: 30, workout_id: 8, reps: 20, sets: 4)

Workout.create!(name: "Basic Leg Workout", time: 60, user_id: 1)
WorkoutExercise.create!(exercise_id: 9, workout_id: 9, reps: 12, sets: 3)
WorkoutExercise.create!(exercise_id: 22, workout_id: 9, reps: 12, sets: 3)
WorkoutExercise.create!(exercise_id: 12, workout_id: 9, reps: 12, sets: 3)
WorkoutExercise.create!(exercise_id: 11, workout_id: 9, reps: 12, sets: 3)

Schedule.create!(user_id: 1)


WorkoutDay.create!(schedule_id: 1, workout_id: 1, day: "Monday")
WorkoutDay.create!(schedule_id: 1, workout_id: 2, day: "Wednesday")

Review.create!(workout_id: 2, rating: 5, write_up: "A go-to to weekly workout")
Review.create!(workout_id: 1, rating: 1, write_up: "I like having noodle arms")

SavedWorkout.create!(user_id: 1, workout_id: 1)


