class Api::RecipesController < ApplicationController
  def index
    search_term = params[:search]
    response = HTTP.get ("https://api.edamam.com/search?q=#{search_term}&app_id=#{ENV["application_id"]}&app_key=#{ENV["api_key"]}")
    render json: response.parse
  end
end
