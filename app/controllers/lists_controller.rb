class ListsController < ApplicationController
  def index
    @lists = List.order('updated_at desc')
  end

  def new
    @list = List.new
  end

  def create
    if @list = List.create(params[:list])
      redirect_to lists_path
    else
      render 'new'
    end
  end
end