class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all

    @time_selected = params[:meal_time]

    if @time_selected
      app_items = Category.find_by(name: "App").menu_items
      entree_items = Category.find_by(name: "Entree").menu_items
      side_items = Category.find_by(name: "Side").menu_items
      dessert_items = Category.find_by(name: "Dessert").menu_items
      @apps = app_items & @time_selected
      @entrees = entree_items & @time_selected
      @sides = side_items & @time_selected
      @desserts = dessert_items & @time_selected
    else
      @app = Category.find_by(name: "App").menu_items
      @entree = Category.find_by(name: "Entree").menu_items
      @side = Category.find_by(name: "Side").menu_items
      @dessert = Category.find_by(name: "Dessert").menu_items
    end

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
