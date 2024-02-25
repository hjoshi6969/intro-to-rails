class BreedController < ApplicationController
    def index
        @breeds = Breed.all
        @breed_name = params[:name]
    end
end
