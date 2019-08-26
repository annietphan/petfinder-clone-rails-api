class Api::V1::PetsController < ApplicationController
  before_action :set_shelter

  def index
    @pets = @shelter.pets
    render json: @pets
  end

  def show
    @pet = Pet.find(params[:id])
    render json: @pet
  end

  def create
    @pet = @shelter.pets.new(pet_params)
    if @pet.save
      render json: @pet
    else
      render json: {error: 'Error adding pet'}
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_shelter
    @shelter = Shelter.find(params[:shelter_id])
  end

  def pet_params
    params.require(:pet).permit(
      :shelter_id,
      :name,
      :breed,
      :gender,
      :size,
      :age,
      :kind,
      :vaccinated,
      :good_with_cats,
      :good_with_dogs,
      :good_with_kids,
      :house_trained
    )
  end

end
