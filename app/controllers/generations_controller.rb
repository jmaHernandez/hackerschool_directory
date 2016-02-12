class GenerationsController < ApplicationController

  def index
    @generations = Generation.all
  end

  def new
    @generation = Generation.new
  end

  def create
    @generation = Generation.new(generation_params)
    @generation.save

    redirect_to generations_path
  end

  def edit
    @generation = Generation.find(params[:id])
  end

  def show
    @generation = Generation.find(params[:id])
  end

  def update
    @generation = Generation.find(params[:id])

    @generation.update_attributes(generation_params)
    redirect_to generations_path
  end

  def destroy
    @generation = Generation.find(params[:id])

    @generation.destroy
    redirect_to generations_path
  end

  private

  def generation_params
    params.require(:generation).permit(:name, :start_date)
  end
end
