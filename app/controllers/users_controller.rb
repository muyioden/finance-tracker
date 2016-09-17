class UsersController < ApplicationController
  
    def my_portfolio
      @user_stocks = current_user.stocks
      @user = current_user
    end

    def my_friends

    end

    def search
      @user = User.search(params[:search_param])

      if @users
        @users = current_user.except_current_user(@users)
        render partial: 'friends/lookup'
      else
        render status: :not_found, nothing: true 
      end

    end

    def add_friend
      @friend = User.find(params[:friend])

      if current_user.save
        redirect_to my_friends_path, notice: "Friend was successfully added"
      else
        redirect_to my_friends_path, flash[:error] = "There was an error with making user a friend"
      end
    end

end