class UsersController < Clearance::UsersController

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
