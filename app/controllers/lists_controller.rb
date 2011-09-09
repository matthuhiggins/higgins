class ListsController < ApplicationController
  # layout 'application'
  def index
    @lists = List.order('updated_at desc')
  end
end