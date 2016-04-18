class ClassroomsController < ApplicationController
	def index
		@classrooms =Classroom.order("name").page(params[:page]).per(2)
	end
	def new 
	   @classroom=Classroom.new
	end 
	def create
       #raise params.inspect
	   @classroom=Classroom.new(classroom_params)
	   if @classroom.save
	   	#raise params.inspect
	     redirect_to classrooms_path
	   else
	     render 'new'
	   end
    end
    def edit
    	
    	@classroom=Classroom.find(params[:id])
    end
    def update

        @classroom=Classroom.find(params[:id])
        #raise params.inspect
        if @classroom.update(classroom_params)	
          redirect_to  classrooms_path
        else
            render 'edit'
        end
    end 
    def destroy
        @classroom=Classroom.find(params[:id])
        if @classroom.destroy
        	redirect_to classrooms_path
        end
    end      
private
    def classroom_params
      params.require(:classroom).permit(:name,:no_of_students,:description)
    end  	
	         	
end
