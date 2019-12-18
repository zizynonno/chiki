class FriendsController < ApplicationController
  before_action :sign_in_required, only: [:new,:edit,:index,:show]
  before_action :friend
  def new
    @friends = Friend.new
  end

  def edit
    @ItemBasics = ItemBasic.find(params[:id])
  end

  def index
  end

  def show
    @ItemBasics = ItemBasic.find(params[:id])
  end
end
