class PagesController < ApplicationController
  before_action :friend
  def index
    # friends = Friend.where(user: current_user)
    # @friends = ItemBasic.where(friend: friends)
  end

  def show
    # friends = Friend.where(user: current_user)
    # @friends = ItemBasic.where(friend: friends)
  end
end
