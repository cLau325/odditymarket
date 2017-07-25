class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @disprod = Disprod.includes(@disprod).order("created_at desc").limit(3).offset(0)
    @forauction = Forauction.includes(@forauction).order("created_at desc").limit(3).offset(0)
    @forsale = Forsale.includes(@forsale).limit(3).order("created_at desc").offset(0)
  end
  
  def index
      @posts = current_user.posts
   end
   
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params) 
    if @user.save   # 处理注册成功的情况 Create Sucessful 
      log_in @user
      flash[:success] = "Welcome to the Oddity Market"
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
