class UsersController < ApplicationController
  
  def new
  @user = User.new
  end

def create
@user = User.new(user_params)
if params[:prosolar_password] != ENV['COMPANY_PASSWORD']
	flash.now[:notice] = "prosolar password incorrect "
	render 'new'
elsif @user.save
	session[:user_id] = @user.id
	redirect_to root_path
else
	render 'new'
end
end

def show
end

private

def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation)
end
end