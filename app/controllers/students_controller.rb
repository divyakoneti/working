class StudentsController < ApplicationController
	def index
		@students = Student.order("name").page(params[:page]).per(2)
	end
	def new
		@classrooms = Classroom.all
		@student = Student.new
	end
	def create
		@classrooms = Classroom.all
		@student = Student.new(student_params)
		if @student.save
		#raise params.inspect	
			redirect_to students_path
		else
			render 'new'
		end
	end

	def show
		@student = Student.find(params[:id])
	end
	def edit
		@classrooms = Classroom.all
		@student = Student.find(params[:id])
	end
	def update
		@classrooms = Classroom.all
		@student = Student.find(params[:id])
		if @student.update(student_params)
			redirect_to students_path
		else
			render 'edit'
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end
	private
	def student_params
		params[:student].permit(:name, :marks, :year, :course, :classroom_id)
	end
end
