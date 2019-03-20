class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  def result

    @items = Item.search(params[:search])
  end

  def search
    @items = Item.search(params[:search])
  end

  private

    def item_params
      params.require(:item).permit(:image, :name, :sake_parameter, :acid_parameter, :category_id, :made_in_id, :introduction)
    end

end
