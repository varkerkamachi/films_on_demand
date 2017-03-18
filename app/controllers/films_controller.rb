class FilmsController < ApplicationController
  respond_to :json

  def index
    @films = Film.all
    render json: @films
  end

  def show
    @film = Film.find params[:id] rescue nil
    render json: @film
  end
end
