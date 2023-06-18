class WorkoutDaysController < ApplicationController

  def index
    render json: WorkoutDay.all
  end

  def show
    day = WorkoutDay.find_by(:id => params[:id])
    if day && session[:user_id] == day.schedule.user_id
      render json: day, include: [:workout_exercises ]
    elsif 
      render json: {errors: ["Only The Owner of This Schedule Can Request This Info"]}, status: :not_found
    else
      render json: {errors: ["Day Does Not Exist"]}, status: :not_found
    end
 
  end

  def create
    day = WorkoutDay.create(workout_params)
    if day.valid? && session[:user_id] == day.schedule.user_id
      render json: day, status: :created
    else
      render json: { errors: day.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    day = WorkoutDay.find_by(id: params[:id])
    if day && session[:user_id] == day.schedule.user_id
      day.destroy
      head :no_content
    elsif 
      render json: {errors: ["Only The Owner of This Schedule Can Delete This Info"]}, status: :not_found
    else
      render json: {errors: ["Day Does Not Exist"]}, status: :not_found
    end
  end

  private
  # all methods below here are private

  def workout_params
    params.permit(:workout_id, :schedule_id, :day)
  end
end
