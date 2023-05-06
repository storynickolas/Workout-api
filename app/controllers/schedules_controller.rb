class SchedulesController < ApplicationController

  def index
    render json: Schedule.all
  end

  def show
    schedule = Schedule.where(:id => params[:id])
    if schedule
      render json: schedule
    else
      render_not_found_response
    end
  end

  def create
    schedule = Schedule.create(schedule_params)
    if schedule.valid?
      render json: schedule, status: :created
    else
      render json: { errors: schedule.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    exercise = Schedule.find_by(id: params[:id])
    if schedule 
      schedule.destroy
      head :no_content
    else
      render json: {errors: ["Exercise Does Not Exist"]}, status: :not_found
    end
  end

  private
  # all methods below here are private

  def schedule_params
    params.permit(:user_id, :monday, :tuesday, :thursday, :friday)
  end

end
