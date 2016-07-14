class WelcomeController < ApplicationController

  def index
    @todos = get_todo_list
    @blogs = get_post
    if request.xhr?
      render json: get_todo_list
    end
  end

  def todo

    @todo = params["todo"]

    todo_list = get_todo_list
    todo_list.push(@todo)

    if request.xhr?
      render json: todo_list
    end
  end

  def finish
    id = params[:id].to_i
    todo_list = get_todo_list
    todo_list.delete_at(id)

    redirect_to root_path
  end



  private
  def get_todo_list
    @@todo_list ||= ["apple", "banana", "orange"] #or equals means todo_list will equal itself if it already exists, if not it will equal the new thing
  end

  def get_post
    @@blog_post ||= [["confused", "zoe", "6/6/16, 12:30pm", "Did not understand how to use javascript for blog posts. What do these for loops do??????? Why do we need child pages?? I DONT KNOW"],["everything's looking up!", "zo-ayyyyy making progress", "6/6/16, 12:40pm", "We figured out the for loop in the makePosts function.  We called the dummy posts using an array whoop whoop!"],["Finished the Post", "zoe 'the celebrator' henry", "6/6/16, 12:46pm", "This has been a rollercoaster! My blog is now working and we now have a beter understanding of how all the files work together! woooooooo"]]
  end

end
