class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user_id: params[:user_id])
    render json: @favorites
  end

  def create
    @favorite = Favorite.new(favorite_params)

    @favorite.save
    render json: {
      favorite: true,
      name: @favorite.name
    }
    rescue
      ActiveRecord::RecordInvalid => e
      render json: {
        status: :unprocessable_entity,
        error: e.message
    }
    end

  def destroy
    @favorite = Favorite.find_by(id: params[:id], user_id: params[:user_id])
    @favorite.destroy

  rescue
    ActiveRecord::RecordInvalid => e
    render json: {
      status: :unprocessable_entity,
      error: e.message
    }
  end

    private

  def favorite_params
    params.require(:favorite).permit(:name, :user_id, :pokeId)
  end
end
