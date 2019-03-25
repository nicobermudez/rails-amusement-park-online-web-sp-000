class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user = User.new
  end

  def create
  end

  def update
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params(:user).permit(
      :name,
      :password,
      :height,
      :tickets,
      :happinesss,
      :nausea,
      :admin)
    end
end
