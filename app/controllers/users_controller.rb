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
      redirect_to @user
    else# 处理注册失敗的情况 Create Failed
      render 'new' 
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end
