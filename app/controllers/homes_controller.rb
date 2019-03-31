class HomesController < ApplicationController

  def top
    @items = Item.search(params[:search])
    # @user = current_user.id
  end

  # def about
  # end

  def admin
    @items = Item.all
    @stores = Store.all
  end

end
