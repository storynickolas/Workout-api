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
    if saved.valid? && session[:user_id] == saved.user_id
      render json: saved, status: :created
    elsif saved.valid? 
      render json: { error: "Unauthorized User" }, status: :unprocessable_entity
    else
      render json: { errors: saved.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    saved = SavedWorkout.find_by(id: params[:id])
    if saved  && session[:user_id] == saved.user_id
      saved.destroy
      head :no_content
    elsif saved.valid? 
      render json: { error: "Unauthorized User" }, status: :unprocessable_entity
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
