class DisprodsController < ApplicationController
    
    before_action :find_prod, only:[:show, :edit, :update, :destroy]
    
    def index
        @disprod = Disprod.all.order("created_at DESC")
        if params[:search]
            @disprod = Forsale.search(params[:search]).order("created_at DESC")
        else
            @disprod = Forsale.all.order('created_at DESC')
        end
    end
    
    def show
    end
    
    def new
        # <model>.new
        @disprod = Disprod.new
    end
    
    def create
        @disprod = Disprod.new(disprod_params)
        
        if @disprod.save
          flash[:success] = "Successfully created new product."
          redirect_to @disprod
        else
          render 'new'
        end
    end
    
    def edit

    end
    
    def update
        if @disprod.update(disprod_params)
            redirect_to @disprod
        else
            render 'edit'
        end
    end
    
    def destroy
        @disprod.destroy
        flash[:success] = "Successfully delete product."
        redirect_to @disprod
    end
    
    
    private
    
    def disprod_params
        params.require(:disprod).permit(:dp_name, :desc, :image, :user_id)
    end
    
    def find_prod
        @disprod = Disprod.find(params[:id])
    end

end