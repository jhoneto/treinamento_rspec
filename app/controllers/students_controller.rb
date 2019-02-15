class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render 'new'
    end
  end

  def student_params
    params.require(:student).permit(:name, :register, :email, :father_name, :mother_name, :age)
  end
end
