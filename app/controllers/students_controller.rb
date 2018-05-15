class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student=Student.find(params[:id])
  end

  def activate
    binding.pry
    @student=Student.find(params[:id])
    if params[:name] == true
      @student.active = "true"
    else
      @student.active = "false"
    end
    @student.activate


  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
