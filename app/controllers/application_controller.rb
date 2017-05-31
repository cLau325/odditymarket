class ApplicationController < ActionController::Base 
  protect_from_forgery with: :exception
  def hello
    render html: "Hello World!"
  end 
  
  def welcome
    render html: "Welcome to the Oddity Market!"
  end
end