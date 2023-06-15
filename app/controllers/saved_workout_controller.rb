class SavedWorkoutController < ApplicationController

  def index
    render json: SavedWorkout.all
  end

  def show
    saved = SavedWorkout.where(:id => params[:id])
    if saved
      render json: saved
    else
      render_not_found_response
    end
  end

  def create
    saved = SavedWorkout.create(saved_params)
    if saved.valid?
      render json: saved, status: :created
    else
      render json: { errors: saved.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    saved = SavedWorkout.find_by(id: params[:id])
    if saved 
      exercise.destroy
      head :no_content
    else
      render json: {errors: ["Workout Does Not Exist"]}, status: :not_found
    end
  end

  private
  # all methods below here are private

  def saved_params
    params.permit(:user_id, :workout_id)
  end


end
