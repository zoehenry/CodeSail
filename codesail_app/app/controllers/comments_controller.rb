class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    comment_hash = params.delete('comment')
    a = Comment.new
    a.author = comment_hash['author']
    a.content = comment_hash['content']
    a.stars = comment_hash['stars']

    if a.save
      redirect_to comment_path(a.id)
    end
  end

  def destroy
    id = params[:id]
    Comment.delete(id)
    flash[:notice] = "You've deleted ApplicationFrom #{id}"
    redirect_to comment_path
  end

  def edit
    id = params[:id]
    @comment = Comment.find(id)
  end

  def new
    @comment = Comment.new
  end

  def show
    id = params[:id]
    @comment = Comment.find(id)
  end

  def update
    id = params[:id]
    comment_hash = params.delete('comment')
    @comment = Comment.find(id)
    @comment.author = comment_hash['author']
    @comment.content = comment_hash['content']
    @comment.stars = comment_hash['stars']

    if @comment.save
      redirect_to comments_path(@comment.id)
    end
  end
end
