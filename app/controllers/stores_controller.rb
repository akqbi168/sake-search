class StoresController < ApplicationController

  def index
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.save
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def store_params
    params.require(:store).permit(:image, :name, :introduction, :address, :link, :google_iframe)
  end

end