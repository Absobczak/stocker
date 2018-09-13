class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Hey, you forgot to enter a symbol"
    elsif
      if params[:id]
          @stock= StockQuote::Stock.quote(params[:id])
      end
    elsif params[:id] != params[:id]
      @error = "That Stock Symbol Doesn't Exist...Please Try Again."
    end
  end
  
  def about
  end
  
end
