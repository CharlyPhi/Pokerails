class TestController < ApplicationController
  def home
    render json: { status: "Nothing to see here, move ...."}
  end
end
