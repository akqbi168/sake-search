class HomesController < ApplicationController

  def top
    @items = Item.search(params[:search])
    @user = current_user.id
  end

  def about
  end

  def result
    
  end

end
