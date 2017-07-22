class StaticPagesController < ApplicationController
  def home
    @disprod = Disprod.includes(@disprod).limit(3).offset(0)
    @forauction = Forauction.includes(@forauction).limit(3).offset(0)
    @forsale = Forsale.includes(@forsale).limit(3).offset(0)
    @user = Forsale.includes(@user)
  end

  def about
  end

  def contact
  end
  
  def support
  end
  
end
