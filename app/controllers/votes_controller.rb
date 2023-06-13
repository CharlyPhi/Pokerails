class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
  end

  def index
    @votes = Vote.all.order(created_at: :asc)
    render json: @votes
  end

  def upvote
    @vote = Vote.find(params[:id])
    @vote.number += 1
    @vote.save
    render json: @vote, status: :ok
  end

  private

  def vote_params
    params.require(:vote).permit(:description, :number, :id)
  end
end
