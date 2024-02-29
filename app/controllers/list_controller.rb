class ListController < ApplicationController
    def index
        @breeds = Breed.paginate(page: params[:page], per_page: 10)
    end
    def show
        @breeds = BreedsCategory.where(category_id: params[:id])
    end
end
