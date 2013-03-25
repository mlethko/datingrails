class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      redirect_to profiles_path, :notice => "Successfully added friend."
    else
      redirect_to profiles_path, :notice => "Not able to create friend."
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to profiles_path, :notice => "Successfully removed friend."
  end   
end
