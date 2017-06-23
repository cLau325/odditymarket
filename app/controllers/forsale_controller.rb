class ForsaleController < ApplicationController
  
    before_action :find_sale, only:[:show, :edit, :update, :destroy]
    
    def index
        @forsale = Forsale.all.order("created_at DESC")
    end
    
    def show
        
    end
    
    def new
        @forsale = Forsale.new
    end
    
    def create
        @forsale = Forsale.new(forsale_params)
        
        if @forsale.save
          flash[:success] = "Successfully Created"
          redirect_to @forsale
        else
          render 'new'
        end
    end
    
    def edit

    end
    
    def update
        if @forsale.update(forsale_params)
            redirect_to @forsale
        else
            render 'edit'
        end
    end
    
    def destroy
        @forsale.destroy
        flash[:success] = "Successfully Deleted."
        redirect_to @forsale
    end
    
    
    private
    
    def forsale_params
        params.require(:forsale).permit(:fs_name, :fs_desc, :fs_image, :fs_price)
    end
    
    def find_sale
        @forsale = Forsale.find(params[:id])
    end
  
end
