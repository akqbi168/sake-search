class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
    @tag = Tag.new
    @tags = Tag.all
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_path
    else
      render :new
      # redirect_to new_item_path
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
      redirect_to item_path(@item)
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_path
  end

  def result
    if params[:search]
      @items = Item.search(params[:search])
    else
      @items = Item.all
    end
  end

  def search
    @items = Item.search(params[:search])
  end

  private

    def item_params
      params.require(:item).permit(:image, :name, :sake_parameter, :acid_parameter, :category_id, :made_in_id, :introduction, :image_cache, tag_ids: [], store_ids: [])
    end

end
