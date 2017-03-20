class FilmRatingsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @ratings = params[:film_id].present? ? FilmRating.for_film(params[:film_id]) : FilmRating.all
  end

  def show
    @rating = get_rating
  end

  def create
    @rating = FilmRating.new(model_params)
    if @rating.save
      render json: {message: 'Thanks for rating this flick!'}
    else
      render json: { error: 'There was an issue.. its not looking good. Check back in several days' }
    end
  end


  def update
  end

  def destroy
    @rating = get_rating
    unless @rating.blank?
      @rating.destroy
    end
    render :index
  end

  private
  def get_rating
    FilmRating.find params[:id] rescue nil
  end

  def model_params
    params.permit(
      :film_id,
      :user_id,
      :title,
      :description,
      :stars
      )
  end

end
