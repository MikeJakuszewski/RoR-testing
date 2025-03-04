class UsersController < ApplicationController

    def create
      @user = User.new(user_params)
      if @user.save
        render :show, status: :created, location: @user, formats: :json
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    def index
      @users = User.all
      render :index, formats: :json
    end
  
    def show
      @user = User.find(params[:id])
      render :show, formats: :json
    end
  
    private
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
  
  end
  