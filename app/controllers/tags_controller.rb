class TagsController < ApplicationController

  def create
    @tag = Tag.new(tag_params)
    @tag.save
    flash.now[:success_tag] = 'タグが追加されました!'
    redirect_to new_item_path
  end

  def delete
    tag = Tag.find(params[:id])
    tag.destroy
    redirect_to
  end

  private

    def tag_params
      params.require(:tag).permit(:tag_name)
    end

end
