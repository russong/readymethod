module ApplicationHelper

  def set_value
    @updates = Activity.order("updated_at desc").limit(10)
  end

end
