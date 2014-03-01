class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #@project = Project.find_by user_id :id
      redirect_to sessions_path(params[:id]), :notice => "Signed_up!"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @projects = @user.projects
  end

  def index
    @project = Project.all

  end

  def destroy

  end
end
