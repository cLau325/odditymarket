class ForauctionsController < ApplicationController
  
    before_action :find_auction, only:[:show, :edit, :update, :destroy, :newbid]
    
    def index
        if params[:search]
            @forauction = Forauction.where('fa_name LIKE ?', "%#{params[:search]}%")
        else
            @forauction = Forauction.all.order('created_at DESC')
        end
    end
    
    def show
        @forauction = Forauction.find(params[:id])
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
            #puts ''
            #puts params[:controller]
            #puts @forauction.fa_baseprice
            #puts params[:id]
            #puts ''
            puts ''
            puts @forauction.fa_baseprice
            #puts @forsale.fs_price
            puts ''
            case URI(request.referer).path
                when '/forauctions/' + params[:id] + '/newbid'
                render 'newbid'
                when '/forauctions/' + params[:id] + '/edit'
                render 'edit'
            end
            
        end
    end
    
    def destroy
        @forauction.destroy
        flash[:success] = "Successfully Deleted"
        redirect_to @forauction
    end
    
    def newbid
        
    end
        
    private
    
    def forauction_params
        params.require(:forauction).permit(:fa_name, :fa_desc, :fa_image, :fa_baseprice, :cur_highest, :user_id)
    end
    

    def find_auction
        @forauction = Forauction.find(params[:id])
    end
  
end
