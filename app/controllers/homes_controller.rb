class HomesController < ApplicationController

  def top
    @items = Item.search(params[:search])
  end

  def about
  end

  def result
    
  end

end
