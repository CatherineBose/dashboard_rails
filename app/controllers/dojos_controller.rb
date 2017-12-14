class DojosController < ApplicationController
    def index
     @dojos = Dojo.all
    end
    def show
        # puts params[:id]
        @currentDojo = Dojo.find(params[:id])
        # @dojo = Dojo.find(params[:id])
        # @students = @dojo.students
        @students = Student.where(dojo_id: params[:id])
    end
    def new
        render "dojos/new"
    end
    
    def edit
        @currentDojo = Dojo.find(params[:id])
    end
    
    def create
        @dojo = Dojo.create(dojo_params)
         
        if @dojo.save
            # Save success message to flash to show it once
            flash[:success] = "User successfully created!"
            # redirect_to root_path, notice: "You have successfully created a Dojo!"
            redirect_to '/'
        else
            flash[:errors] = @dojo.errors.full_messages
            redirect_to  '/dojos/new'
        end
        
    end

    def update
        myDojo = Dojo.find(params[:id])
        @updatedDojo = myDojo.update(dojo_params)
        redirect_to '/'
    end
    def destroy
        @updatedDojo =  Dojo.delete(params[:id])
        redirect_to '/'
    end

    private 
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :city, :state)
    end
  
end
