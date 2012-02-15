class MapController < ApplicationController
before_filter :authenticate_user!
  def index
    @phase = Phase.all 
  end
  
  def stage
    @stage = Stage.where("phase_id = ?", params[:id]).order("id asc")
    # render nothing: true
  end
  
  def activity
    @activity = Activity.where("stage_id = ?", params[:id]).order("id asc")
  end
  
end
