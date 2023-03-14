class StudentsController < ApplicationController

  def index
    if params[:name]
      students=Student.where("last_name LIKE ? OR first_name LIKE ?",params[:name],params[:name])
      render json: students

    else 
      render json: students=Student.all 
    end
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end
end
