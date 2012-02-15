class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'home'
  before_filter :initialize_application_data
  include ApplicationHelper

  def initialize_application_data
    set_value
  end
  
  def after_sign_in_path_for(resource)
    map_index_path
  end
end
