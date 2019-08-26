class Api::V1::SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
    render json: @shelters
  end

  def show
    @shelter = Shelter.find(params[:id])
    render json: @shelter
  end

  def create
    @shelter = Shelter.new(shelter_params)
    if @shelter.save
      render json: @shelter
    else
      render json: {error: 'Error creating shelter'}
    end
  end

  def update
  end

  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy
  end

  private

  def shelter_params
    params.require(:shelter).permit(:name, :street_address, :city, :state, :zipcode, :email, :number)
  end
end
