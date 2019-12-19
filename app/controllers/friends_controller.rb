class FriendsController < ApplicationController
  before_action :sign_in_required, only: [:new,:edit,:index,:show]
  before_action :friend
  def new
    @Friend = Friend.new
    @ItemBasics = ItemBasic.new
  end

  def create
    @Friend = current_user.friends.build
    @ItemBasics = @Friend.item_basics.build(user_params)
    if @Friend.save && @ItemBasics.save
      redirect_to pages_show_path
    else
      render 'new'
    end
  end

  def edit
    @ItemBasics = ItemBasic.find(params[:id])
  end

  def index
  end

  def show
    @ItemBasics = ItemBasic.find(params[:id])
  end

  def update
    @ItemBasics = ItemBasic.find(params[:id])
    if @ItemBasics.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to friend_path
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:item_basic).permit(:name,:sex,:birthday,:meet,:tel,:url,:company,:address,
                                     :birthplace,:twitter,:facebook,:instagram,:line,:linkedin)
    end
end
