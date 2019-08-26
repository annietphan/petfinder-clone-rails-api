class Api::V1::PetsController < ApplicationController
  before_action :set_shelter

  def index
    @pets = @shelter.pets
    render json: @pets
  end

  def show
  end

  def create
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
