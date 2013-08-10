class FoodsController < ApplicationController
  
  def new
    @food = Food.new
  end

  def menu
    @foods = Food.search(params[:search])
  end

  def edit_menu
    @foods = Food.search(params[:search])
  end

  def edit
    @food = Food.current_food.find(params[:id])
  end

  def update
    @food = Food.current_food.find(params[:id])
    if @food.update_attributes(params[:food])
      flash[:success] = "Item updated"
      redirect_to edit_menu_path
    else
      render 'edit'
    end
  end

end
