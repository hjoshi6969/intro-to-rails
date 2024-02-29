class ListController < ApplicationController
    def index
        @breeds = Breed.all
    end
end
