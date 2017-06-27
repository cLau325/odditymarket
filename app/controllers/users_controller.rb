class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params) 
    if @user.save   # 处理注册成功的情况 Create Sucessful 
      flash[:success] = "Welcome to the Oddity Market"
      redirect_to user_url(@user)
    else# 处理注册失敗的情况 Create Failed
      render 'new' 
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end
