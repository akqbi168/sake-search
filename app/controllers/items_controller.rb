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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def item_params
      params.require(:item).permit(:image, :name, :sake_parameter, :acid_parameter, :category_id, :made_in_id, :introduction, )
    end

end
