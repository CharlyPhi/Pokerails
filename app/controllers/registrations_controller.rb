class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email: params['user']['email'],
      username: params['user']['username'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
    )
    session[:user_id] = user.id
      render json: {
      status: :created,
      user: user
      }

    rescue ActiveRecord::RecordInvalid => e
      render json: {
        status: :unprocessable_entity,
        error: e.message
      }
    end
end
