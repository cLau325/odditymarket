class SalesPartController < ApplicationController
  
  before_action :find_sale, only: [:show, :edit, :update, :destroy]
  def index
    @sales_part = Sales_part.all.order("created_at_DESC")
  end
  
  def show
  end
  
  def new
    @sales_part = Sales_part.new
  end
  
  def create
    @sales_part = Sales_part.new(sales_part_params)
    if @sales_part.save
      redirect_to @sales_part, notice: "Successfully Created"
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @sales_part.update(sales_part_params)
      redirect_to @sales_part
    else
      render 'edit'
    end
  end
  
  def destroy
    @sales_part.destroy
    redirect_to root_path, notice: "Successfully Deleted"
  end
  
  private
  
  def sales_part_params
    params.require(:sale_item).permit(:title, :description, :Price)
  end
  
  def find_sale
    @sales_part = Sales_part.find(params[:id])
  end
end
