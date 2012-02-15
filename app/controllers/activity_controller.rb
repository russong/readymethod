class ActivityController < ApplicationController
before_filter :authenticate_user!

  def show
    @activity = Activity.find(params[:id])
    @blogs = Blog.where("activity_id = ?",@activity.id).limit("5")
    @tips = Tip.where("activity_id = ?",@activity.id).limit("5")
  end
  
end
