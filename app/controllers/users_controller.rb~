class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user=User.new params[:user]
    @user.point = 0
    if @user.save
      redirect_to :action=>:index,:controller=>:bets
    else
      puts @user.errors.full_messages
    end
  end
end
