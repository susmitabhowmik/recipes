class Api::RecipesController < ApplicationController
  def index
    search_term = params[:search]
    response = HTTP.get()
    p response.parse
  end
end
