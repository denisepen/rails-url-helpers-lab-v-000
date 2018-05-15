class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student=Student.find(params[:id])
  end

  def activate
    @student=Student.find(params[:id])
    if params[:name] == true
      @student.active = "true"
    else
      @student.active = "false"
    end

    render "/students/show", as: "/students/:id"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
