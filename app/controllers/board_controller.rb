class BoardController < ApplicationController
  def index
    @all_post = Unipost.all
  end

  def create
  end

  def read
    @one_post = Unipost.new
    @one_post.title = params[:title]
    @one_post.writer = params[:writer]
    @one_post.content = params[:content]
    @one_post.hits = 0
    @one_post.save
    
    redirect_to '/board/index'
    
  end

  def update
    @one_post = Unipost.find(params[:update_id])    
  end

  def update_ok
    @one_post = Unipost.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.writer = params[:writer]
    @one_post.save
    
    redirect_to '/board/index'
  
  end
  
  
  
  def delete
    @one_post = Unipost.find(params[:del_id])
    @one_post.destroy
    
    redirect_to '/board/index'
  end

  def detail
    @one_post = Unipost.find(params[:id])

  end
end
