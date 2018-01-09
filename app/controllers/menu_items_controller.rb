class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all

    @time_selected = MealTime.find_by(name: params[:meal_time]).menu_items if params[:meal_time]

    app_items = Category.find_by(name: "App").menu_items
    entree_items = Category.find_by(name: "Entree").menu_items
    side_items = Category.find_by(name: "Side").menu_items
    dessert_items = Category.find_by(name: "Dessert").menu_items

    if @time_selected
      @apps = app_items & @time_selected
      @entrees = entree_items & @time_selected
      @sides = side_items & @time_selected
      @desserts = dessert_items & @time_selected
    else
      @apps = app_items
      @entrees = entree_items
      @sides = side_items
      @desserts = side_items
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
