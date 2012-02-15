ActiveAdmin.register Tip do
  menu :priority => 6
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Tip", :multipart => true do
      f.input :activity_id, :collection => Activity.all.map {|au| [au.name, au.id]} , :include_blank => false, :as => :select
      #f.input :content, :as => :ckeditor, :input_html => { :height => 400, :height => 400 }
      #f.input :content, :toolbar => 'Full', :width => 800, :height => 400  ,:as => :ckeditor
      f.input :content#, :input_html => { :class => "ckeditor" }
    end    
    f.buttons
  end
  
  
  index do  
    column :id
    column :activity  
    column :content  
    column :created_at  
    column :updated_at
    default_actions  
  end
  
end
