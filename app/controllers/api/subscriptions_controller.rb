class Api::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.create(
      follower_id: current_user.id,
      followee_id: params[:followee_id]
    )
    render json: subscription
  end

  def destroy
    subscription = Subscription.where(
      follower_id: current_user.id,
      followee_id: params[:followee_id]
    ).first
    subscription.destroy
  end

  private

  def subscription_params
    params.require(follow).permit(:followee_id)
  end
end
