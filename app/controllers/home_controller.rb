class HomeController < ApplicationController
before_filter :authenticate_user! , :except => "index"

def text_option
  @phases = Phase.all
end

def deliverable_option
  @deliverables = Deliverable.order("deliverable_name asc").all
end

def search
  
  unless request.post?
  else
    #@results = Activity.where("lower(name) like '%#{lower(params[:search])}%' or content like '%#{params[:search]}%'")
    #@results = Activity.where("[lower(name) like ?, params[:search].downcase]")
    @results = Activity.where("LOWER (name) LIKE ? OR LOWER (content) LIKE ?", "%#{params[:search].downcase}%" , "%#{params[:search].downcase}%")
#    @results = ""
  end
  
end
  
end
