class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.create(
                                 name: params[:name],
                                 description: params[:description],
                                 price: params[:price])
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    menu_item = MenuItem.find(params[:id])
    menu_item = MenuItem.update(
                                name: params[:name],
                                description: params[:description],
                                price: params[:price])
    redirect_to "/menu/#{menu_item.id}"
  end

  def destory
    menu_item = MenuItem.find(params[:id])
    menu_item.destroy
    redirect_to "/menu"
  end
end
