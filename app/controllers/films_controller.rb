class FilmsController < ApplicationController
  # respond_to :json

  def index
    @films = Film.all.select(:id, :title, :description, :url_slug, :year)
    # render json: @films
  end

  def show
    @film = Film.find params[:id] rescue nil
    render json: @film
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
