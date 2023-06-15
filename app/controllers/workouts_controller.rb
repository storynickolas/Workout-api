class WorkoutsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
    render json: Workout.all
  end

  def show
    workout = Workout.where(:id => params[:id])
    if workout
      render json: workout
    else
      render_not_found_response
    end
  end

  def create
    workout = Workout.create(workout_params)
    if workout.valid?
      render json: workout, status: :created
    else
      render json: { errors: workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    workout = Workout.find_by(id: params[:id])
    if workout && session[:user_id] == workout.user_id
      workout.destroy
      head :no_content
    elsif 
      render json: {errors: ["Only The Owner of This Workout Can Delete It"]}, status: :not_found
    else
      render json: {errors: ["Workout Does Not Exist"]}, status: :not_found
    end
  end

  def userWorkouts
    workout = Workout.find_by(:user_id => params[:id])
    if workout && session[:user_id] == workout.user_id
      render json: workout
    elsif 
      render json: {errors: ["Only The Owner of This Workout Can Request This Info"]}, status: :not_found
    else
      render json: {errors: ["Workout Does Not Exist"]}, status: :not_found
    end
  end

  def update
    workout = Workout.find_by(:id => params[:id])
    if workout && session[:user_id] == workout.user_id
      workout.update(workout_params)
      render json: workout
    elsif 
      render json: {errors: ["Only The Owner of This Workout Can Modify It"]}, status: :not_found
    else
      render json: {errors: ["Workout Does Not Exist"]}, status: :not_found
    end
  
  end


  private
  # all methods below here are private

  def workout_params
    params.permit(:name, :time, :user_id)
  end

end
