class PostsController < ApplicationController
  def create
    @post = list.posts.create params[:post]
  end

  def destroy
    @post = list.posts.find params[:id]
    @post.destroy
    head :ok
  end

  private
    def list
      @list ||= List.find params[:list_id]
    end
end