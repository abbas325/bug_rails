class SessionsController < ApplicationController
  before_filter :require_login, :only => :secret
  def index

  end

  def show

  end

  def new
  end

  def create
    user  = login(params[:email], params[:password], params[:remember_me])
    if user
      #return render :json => params
      redirect_to user_projects_path(user), :notice => "Logged In!"
    else
      #flash.new.alert = "Email Or Password is invalid."
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "logged Out!"
  end
end
