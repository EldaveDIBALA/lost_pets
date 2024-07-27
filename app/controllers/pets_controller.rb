class PetsController < ApplicationController
  def index
    @pets = Pet.all.order(found_on: :desc)
  end
end
