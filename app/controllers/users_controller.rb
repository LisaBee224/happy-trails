class UsersController < ApplicationController
  def new
    if logged_in?
      render :welcome
    else
      @user = User.new
    end
  end

  def create
    @user=User.create(user_params)
    if @user.save
      session[:user_id] = @user.user_id
      render :welcome
    else
      render 'new'
    end
  end

end
