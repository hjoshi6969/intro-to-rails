class SubBreedsController < ApplicationController
  def index
    @Catogeries = Category.paginate(page: params[:page], per_page: 15)
  end
end
