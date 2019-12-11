class FriendsController < ApplicationController
  before_action :sign_in_required, only: [:new,:edit,:index,:show]
  def new
    @friend = Friend.new
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def index
    @friend = Friend.all
  end

  def show
    @friend = Friend.all
  end
end
