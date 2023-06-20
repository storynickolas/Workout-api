class SchedulesController < ApplicationController

  def index
    render json: Schedule.all
  end

  def show
    schedule = Schedule.where(:id => params[:id])
    if schedule && session[:user_id] == schedule[0].user_id
      render json: schedule
    elsif schedule.valid? 
      render json: { error: "Unauthorized User" }, status: :unprocessable_entity
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
    schedule = Schedule.find_by(id: params[:id])
    if schedule 
      schedule.destroy
      head :no_content
    else
      render json: {errors: ["Schedule Does Not Exist"]}, status: :not_found
    end
  end

  private
  # all methods below here are private

  def schedule_params
    params.permit(:user_id)
  end

end
