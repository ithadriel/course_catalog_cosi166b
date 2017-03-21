class EnrollmentsController < ApplicationController

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new(user_id: params[:user_id], course_id: params[:course_id])

    respond_to do |format|
      if @enrollment.save
        #format.html { redirect_to @enrollment, notice: 'Enrollment was successfully created.' }
        format.html { redirect_to current_user, notice: 'Enrolled in the course successfully!' }
        format.json { render :show, status: :created, location: @enrollment }
      else
        format.html { render :new }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

end
