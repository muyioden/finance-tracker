class FriendshipsController < ApplicationController

  def destroy
    @friendship = current_user.friendships.where(friends_id: params[:id]).first 
    @friendship.destroy

    respond_to do |format|
      format.html {redirect_to my_friends_path notice: "Friend was successfully removed"}
    end
  end

end