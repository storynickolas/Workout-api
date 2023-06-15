class WorkoutDaysController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create, :destroy]

  def index
    render json: WorkoutDay.all
  end

  def show
    day = WorkoutDay.where(:id => params[:id])
    if day
      render json: day, include: [:workout_exercises ]
    else
      render_not_found_response
    end
  end

  def create
    day = WorkoutDay.create(workout_params)
    if day.valid?
      render json: day, status: :created
    else
      render json: { errors: day.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    day = WorkoutDay.find_by(id: params[:id])
    if day 
      day.destroy
      head :no_content
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
