class ExercisesController < ApplicationController

  def index
    render json: Exercise.all
  end

  def show
    exercise = Exercise.where(:id => params[:id])
    if exercise
      render json: exercise
    else
      render_not_found_response
    end
  end

  def create
    exercise = Exercise.create(exercise_params)
    if exercise.valid?
      render json: exercise, status: :created
    else
      render json: { errors: exercise.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    exercise = Exercise.find_by(id: params[:id])
    if exercise 
      exercise.destroy
      head :no_content
    else
      render json: {errors: ["Exercise Does Not Exist"]}, status: :not_found
    end
  end

  private
  # all methods below here are private

  def exercise_params
    params.permit(:name, :muscle_group, :video)
  end
  
end
