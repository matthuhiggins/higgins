class MessageController < ApplicationController
  def index
    render :json => Message.since(nil)
  end
  
  def show
    render :json => Message.since(params[:id])
  end
  
  def create
    render :text => Message.deliver(params[:message])
  end
end
