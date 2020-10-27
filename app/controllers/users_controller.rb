class UserController < ApplicationController

  def index
    @user = user.all
    if params[:page]
      page = params[:page]
      @users = user.search(page)
    end
    json_response(@users)
  end

  def show
    @user = user.find(params[:id])
    json_response(@user)
  end

  def create
    @user = user.create!(user_params)
    json_response(@user, :created)
  end

  def update
    @user = user.find(params[:id])
    if @user.update!(user_params)
      render status: 200, json: {
        message: "This user has been updated successfully."
      }
    end
  end

  def destroy
    @user = user.find(params[:id])
    if @user.destroy
      render status: 200, json: {
        message: "This user has been successfully removed."
      }
    end
  end

  private

  def user_params
    params.permit(:rating, :content, :user_id, :destination_id)
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  
end