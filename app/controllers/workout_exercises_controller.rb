class WorkoutExercisesController < ApplicationController

  def index
    render json: WorkoutExercise.all
  end

  def show
    program = WorkoutExercise.where(:id => params[:id])
    if program
      render json: program
    else
      render_not_found_response
    end
  end

  def create
    program = WorkoutExercise.create(program_params)
    if program.valid?
      render json: program, status: :created
    else
      render json: { errors: program.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    program = WorkoutExercise.find_by(id: params[:id])
    if program 
      program.destroy
      head :no_content
    else
      render json: {errors: ["Exercise Does Not Exist"]}, status: :not_found
    end
  end

  private
  # all methods below here are private

  def program_params
    params.permit(:workout_id, :exercise_id)
  end

end
