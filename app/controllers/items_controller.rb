class ItemsController < ApplicationController
  def index
    @items = Item.search(params[:search])
  end

  def show
    @item = Item.find_by(id: params[:id])
  end
end
