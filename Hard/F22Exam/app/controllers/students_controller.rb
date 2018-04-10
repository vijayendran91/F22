class StudentsController < ApplicationController
  def signup
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student.user_name)
    else
      flash[:danger] = "Invalid username/password combination."
      redirect_to(:action => "new")
    end
  end

private
  def student_params
    params.require(:students).permit(:user_name,:fname,:lname,:email,:password,:password_confirmation)
  end


end
