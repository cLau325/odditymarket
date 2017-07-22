class StaticPagesController < ApplicationController
  def home
    @disprod = Disprod.includes(@disprod).order("created_at desc").limit(3).offset(0)
    @forauction = Forauction.includes(@forauction).order("created_at desc").limit(3).offset(0)
    @forsale = Forsale.includes(@forsale).limit(3).order("created_at desc").offset(0)
    @user = Forsale.includes(@user)
  end

  def about
  end

  def contact
  end
  
  def support
  end
  
end
