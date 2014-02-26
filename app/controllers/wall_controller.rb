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

  def edit
  end

  def delete_complete
    p=Post.find(params[:id])
    p.destroy

    redirect_to "/wall/post"
  end

  def comment
  end
end
