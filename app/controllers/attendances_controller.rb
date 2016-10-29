class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new
    @attendance.event_id = params[:event_id]
    @attendance.attendee_id = params[:attendee_id]

    if @attendance.save
      redirect_to "/attendances", :notice => "Attendance created successfully."
    else
      render 'new'
    end
  end

  def edit
    @attendance = Attendance.find(params[:id])
  end

  def update
    @attendance = Attendance.find(params[:id])

    @attendance.event_id = params[:event_id]
    @attendance.attendee_id = params[:attendee_id]

    if @attendance.save
      redirect_to "/attendances", :notice => "Attendance updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])

    @attendance.destroy

    redirect_to "/attendances", :notice => "Attendance deleted."
  end
end
