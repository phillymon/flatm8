class UserSetListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_set_list, only: [:update]

  def edit
    @user_set_list = current_user.profile
  end

  def update
    @user_set_list.update!(user_set_list_params)
    flash[:notice] = 'Profile Updated'
    redirect_to root_path
  end

  private

  def user_set_list_params
    params.require(:user_set_list).permit(:first_name, :last_name, :avatar)
  end

  def set_user_set_list
    @user_set_list = UserSetList.find_by_id(params[:id])
  end
end
