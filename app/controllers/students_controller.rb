class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create_table
    @student = Student.new(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      email: params[:student][:email]
    )
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end
  
end
