class DisprodsController < ApplicationController
    
    before_action :find_prod, only:[:show, :edit, :update, :destroy]
    
    def index
        if params[:search]
            @disprod = Disprod.where('dp_name LIKE ?', "%#{params[:search]}%")
        else
            @disprod = Disprod.all.order('created_at DESC')
        end
    end
    
    def show
         @disprod = Disprod.find(params[:id])
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