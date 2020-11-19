class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @items = @department.items
  end

  def show
  end

  def new
    @item = @department.items.new
  end

  def create
    @item = @department.items.new(item_params)

    if @item.save
      # this up to you as dev where to go
      redirect_to department_item_path(@department, @item)
    else
      # want to go back form if error
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to department_item_path(@department, @item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to department_items_path(@department)
  end

  private
  def set_department
    @department = Department.find(params[:department_id])
  end

  def set_item
    @item = @department.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end
end
