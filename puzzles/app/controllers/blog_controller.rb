class BlogController < ApplicationController
  def index
    @title = "First Post!"
    @author = "John Watson"
    @content = "Today I meet an odd detective fellow with a funny hat."
    @posts = [{title: @title, author: @author, content: @content}]
  end

  def posts

  end

  def comments

  end
end
