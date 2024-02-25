# app/controllers/breeds_controller.rb

class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
  end
end
