class InstructorsController < ApplicationController
 def index
    @instroctors = Instructor.all 

    json render: @instructors
 end

 def show
    @instructor = Instructor.find(params[:id])

    render json: @instructor
 end

 def create
    @instructor = Instructor.create(
        name: params[:name],
        age: params[:age],
        location: params[:location]
    )
    render json: @instructor
 end

 def upddate
    @instructor = Instructor.find(params[:id}])
    @instructor.update(
        name: params[:name],
        age: params[:age],
        location: params[:location]
    )
    render json: @instructor
 end

 def destroy
    @instructors = Instructor.all
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

    render json = @instructors
 end
end
