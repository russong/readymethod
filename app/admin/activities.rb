ActiveAdmin.register Activity do
menu :priority => 3
form :html => { :enctype => "multipart/form-data" } do |f|
  f.inputs "Activity", :multipart => true do
    f.input :stage_id, :collection => Stage.all.map {|au| [au.name, au.id]} , :include_blank => false, :as => :select
    f.input :name
    #f.input :content, :as => :ckeditor, :input_html => { :height => 400, :height => 400 }
    #f.input :content, :toolbar => 'Full', :width => 800, :height => 400  ,:as => :ckeditor
    f.input :content, :input_html => { :class => "ckeditor" }
  end    
  f.buttons
end

end
