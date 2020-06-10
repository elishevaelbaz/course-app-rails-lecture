class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @errors = flash[:errors]
  end

  def create
    @student = Student.create(student_params)

    if @student.valid?
      redirect_to students_path
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end

  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :age,)
  end
end
