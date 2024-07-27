class PetsController < ApplicationController
  def index
    @pets = Pet.all.order(found_on: :desc)
  end

  def show
    @pet = Pet.find(params[:id])
  end
end
