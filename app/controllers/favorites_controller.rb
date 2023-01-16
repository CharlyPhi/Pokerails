class FavoritesController < ApplicationController
  def index
    @favorite = Favorite.where(user_id: params[:user_id])
    render json: @favorite
  end

  def create
    @favorite = Favorite.new(favorite_params)
    render json: {
      favorite: true,
      name: @favorite.name
    }
    @favorite.save
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id], user_id: params[:user_id])
    @favorite &
      @favorite.destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:name, :user_id)
  end
end
