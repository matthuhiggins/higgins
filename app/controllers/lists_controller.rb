class ListsController < ApplicationController
  def index
    @lists = List.order('updated_at desc')
  end

  def new
    @list = List.new
  end

  def create
    if @list = List.create(params[:list])
      redirect_to @list
    else
      render 'new'
    end
  end

  def update
    @list = List.find params[:id]
    @list.update_attributes params[:list]
    redirect_to @list  
  end

  def show
    @list = List.find params[:id]
  end

  def edit
    @list = List.find params[:id]
  end
end