class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email: params['user']['email'],
      username: params['user']['username'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render :new, status: :unprocessable_entity
    end
  end
end
