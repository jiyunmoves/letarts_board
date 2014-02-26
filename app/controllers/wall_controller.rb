class WallController < ApplicationController
  before_action :login_check

  def write
  end

  def write_complete
    p=Post.new
    p.name=@current_user.username
    p.content=params[:content]
    if p.save
      redirect_to "/wall/post"
    else
      flash[:alert]=p.errors[:content][0]
      redirect_to :back
    end
  end

  def post
    @posts=Post.all
  end

  def edit_complete
    p=Post.find(param[:id])
    p.content=params[:content_edit]
    if p.save
      redirect_to "/wall/post"
    else
      flash[:alert]=p.errors[:content][0]
      redirect_to :back
    end
  end

  def delete_complete
    p=Post.find(params[:id])
    p.destroy

    redirect_to "/wall/post"
  end

  def comment_complete
    c=Comment.new
    c.post_id=params[:post_id]
    c.name=@current_user.username
    c.content=params[:content]
    c.save

    redirect_to "/wall/post"
  end
end
