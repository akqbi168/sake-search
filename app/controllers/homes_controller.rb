class HomesController < ApplicationController

  before_action :admin_validate!, only: [:admin]

  def top
    @items = Item.search(params[:search])
  end

  # def about
  # end

  def admin
    @items = Item.all
    @stores = Store.all
  end

  private

  def admin_validate!
    admin = User.find(1)
    if current_user != admin
      redirect_to root_path
    end
  end

end
