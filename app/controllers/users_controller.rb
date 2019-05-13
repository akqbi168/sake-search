class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = current_user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        redirect_to user_path(user.id)
    end

    private
        def user_params
            params.require(:user).permit(:image_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :email, :generation_id ,:gender_id)
        end

end
