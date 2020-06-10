class EnrollmentsController < ApplicationController

    def new
        @enrollment = Enrollment.new()
    end

    def create
        @enrollment = Enrollment.create(enrollment_params)
    
        redirect_to student_path(enrollment_params[:student_id])
    end

    def destroy
        @enrollment = Enrollment.find(params[:id])
    
        @enrollment.destroy
    
        redirect_to student_path(@enrollment.student)
      end

      private 

      def enrollment_params
        params.require(:enrollment).permit(:student_id, :course_id)
      end
end
