class AuctionPartController < ApplicationController
  
  before_action :find_auc, only: [:show, :edit, :update, :destroy]
  def index
    @auction_part = Auction_part.all.order("created_at_DESC")
  end
  
  def show
  end
  
  def new
    @auction_part = Auction_part.new
  end
  
  def create
    @auction_part = Auction_part.new(auction_part_params)
    if @auction_part.save
      #redirect_to @auction_part, notice: "Successfully Created"
      flash[:success] = "Successfully created"
      redirect_to @disprod
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @auction_part.update(auction_part_params)
      redirect_to @auction_part
    else
      render 'edit'
    end
  end
  
  def destroy
    @auction_part.destroy
    #redirect_to root_path, notice: "Successfully Deleted"
    flash[:success] = "Successfully deleted"
    redirect_to @sales_part
  end
  
  private
  
  def auction_part_params
    params.require(:auc_item).permit(:title, :description, :basePrice)
  end
  
  def find_auc
    @auction_part = Auction_part.find(params[:id])
  end
end
