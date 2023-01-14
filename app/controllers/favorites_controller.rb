class FavoritesController < ApplicationController

  def index
    @favorite = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:user_id])
  end

  def create
    @favorite = Favorite.new(favorite_params)
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id], user_id: params[:user_id])
    @favorite &&
      @favorite.destroy
    end
end


  private

  def favorite_params
    params.require(:favorite).permit(:name, :height, :weight, :user_id)
  end
end
