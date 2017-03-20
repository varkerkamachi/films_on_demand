class FilmsController < ApplicationController
  
  def index
    @films = Film.all
  end

  def show
    @film = Film.find params[:id] rescue nil
  end

  private
  def model_params
    params.permit(
      :title,
      :description,
      :url_slug,
      :year,
      :average_rating,
      :related_films
      )
  end
end
