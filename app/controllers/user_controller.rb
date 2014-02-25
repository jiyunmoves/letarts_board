class UserController < ApplicationController
  def signup
  end

  def signup_complete
    u=User.new
    u.username=params[:username]
    if params[:password]==params[:retype_password]
      u.password=params[:password]
      if u.save
        flash[:alert]="Welcome to letarts.com."
        redirect_to "/wall/post"
      else
        flash[:alert]=u.errors.values.flatten.join(' ')
        redirect_to :back
      end
    else
      flash[:alert]="Password is not confirmed correctly."
      redirect_to :back
    end
  end

  def login
  end

  def logout
  end
end
