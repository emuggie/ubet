class BetHistoriesController < ApplicationController
before_filter :require_user,:only=>[:create]
  def create
    @bet_history=BetHistory.new params[:bet_history]
    @bet=Bet.find_by_id @bet_history.bet_id
    if @bet.expire < Date.today
      flash[:message]="expired"
      redirect_to :back
      return
    end

    @user=User.find_by_id @bet_history.user_id
    if  @user.point < @bet_history.point
      flash[:message]="not enough point"
      redirect_to :back
      return
    end
    
    @user.point = @user.point - @bet_history.point
    if @user.save
      @bet.point= @bet.points+@bet_history.point
      if @bet.save
        if not @bet_history.save
          @bet.point=@bet.point-@bet_history.point
          @bet.save
        end
      else
        @user.point = @user.point + @bet_history.point
        @user.save
      end
    end
    flash[:message]="bet done"
    redirect_to :back
  end
end
