class CoursesController < ApplicationController

	def index
		@generation = Generation.find(params[:generation_id])
		@courses = @generation.courses
	end

	def new
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.new
	end

	def create
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.new(course_params)

		respond_to do |format|
			if @course.save
				format.html { redirect_to generation_courses_path(@generation), notice: 'Course was successfully created.' }
				format.json { render :show, status: :created, location: @course }
			else
				format.html { render :new }
				format.json { render json: @course.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])
	end

	def edit
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])
	end

	def update
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])

		respond_to do |format|
			if @course.update(course_params)
        		format.html { redirect_to generation_courses_path(@generation), notice: 'Course was successfully updated.' }
        		format.json { render :show, status: :ok, location: @course }
			else
				format.html { render :edit }
				format.json { render json: @course.errors, status: :unprocessable_entity }
      		end
		end
	end

	def destroy
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])

		@course.destroy

		respond_to do |format|
			format.html { redirect_to generation_courses_url(@generation), notice: 'Course was successfully destroyed.' }
			format.json { head :no_content }
    	end
	end

	private
	
	def course_params
		params.require(:course).permit(:name, :generation_id)
	end
end
