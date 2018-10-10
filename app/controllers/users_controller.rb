class UsersController < ApplicationController
  def index
	@users = User.all
  end

  def create
	@user = User.create(user_params)
	if @user.invalid?
	  flash[:error] = 'Please enter First Name, SkypeId and Password to create an account'
	end
	
	@user.save

	redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_id, :skypeid, :email, :password)
  end

end
