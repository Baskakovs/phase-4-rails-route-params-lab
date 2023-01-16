class StudentsController < ApplicationController

  def index

    if params.keys.length > 2
      student = Student.search(params[:name])
      render json: student
      else
        student = Student.all
        render json: student
      end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
