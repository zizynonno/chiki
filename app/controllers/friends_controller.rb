class FriendsController < ApplicationController
  before_action :sign_in_required, only: [:new,:edit,:index,:show]
  before_action :friend
  def new
    @friends = Friend.new
  end

  def edit
    # friends = Friend.where(user: current_user)
    # @friends = ItemBasic.where(friend: friends)
    @ItemBasics = ItemBasic.find(params[:id])
  end

  def index
    # friends = Friend.find_by(user_id: current_user.id)
    # @friends = friends.item_basics.all
    # friends = Friend.where(user_id: current_user.id)
    # @friends = friends.item_basics.all
    # @friends = ItemBasic.joins(:friend).
    #           where(friend: {user_id: current_user.id})
    # friends = Friend.where(user: current_user)
    # @friends = ItemBasic.where(friend: friends)
  end

  def show
    # @friends = ItemBasic.where(params[:id])

    # friends = Friend.where(user: current_user)
    # @friends = ItemBasic.where(friend: friends)
    @ItemBasics = ItemBasic.find(params[:id])
  end
end
