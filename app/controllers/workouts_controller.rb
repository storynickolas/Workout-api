class WorkoutsController < ApplicationController
  skip_before_action :authorized, only: [:index]

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
    if workout 
      workout.destroy
      head :no_content
    else
      render json: {errors: ["Exercise Does Not Exist"]}, status: :not_found
    end
  end

  private
  # all methods below here are private

  def workout_params
    params.permit(:name, :time)
  end

end
