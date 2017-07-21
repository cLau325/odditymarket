class ForauctionsController < ApplicationController
  
    before_action :find_auction, only:[:show, :edit, :update, :destroy]
    
    def index
        @forauction = Forauction.all.order("created_at DESC")
        if params[:search]
            @forauction = Forsale.search(params[:search]).order("created_at DESC")
        else
            @forauction = Forsale.all.order('created_at DESC')
        end
    end
    
    def show
        
    end
    
    def new
        @forauction = Forauction.new
    end
    
    def create
        @forauction = Forauction.new(forauction_params)
        
        if @forauction.save
          flash[:success] = "Successfully Created"
          redirect_to @forauction
        else
          render 'new'
        end
    end
    
    def edit

    end
    
    def update
        if @forauction.update(forauction_params)
            redirect_to @forauction
        else
            render 'edit'
        end
    end
    
    def destroy
        @forauction.destroy
        flash[:success] = "Successfully Deleted"
        redirect_to @forauction
    end
    
    
    private
    
    def forauction_params
        params.require(:forauction).permit(:fa_name, :fa_desc, :fa_image, :fa_baseprice)
    end
    
    def find_auction
        @forauction = Forauction.find(params[:id])
    end
  
end
