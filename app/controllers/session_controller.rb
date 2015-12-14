class SessionController < ApplicationController
  skip_before_filter :require_user, :only => [:create, :new]

  def create
    user = User.find_by(username: params[:session][:username])
    if user and user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash[:error] = "Login failed."
      render "new"
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url
  end

  def new
  end
end
