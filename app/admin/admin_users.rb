ActiveAdmin.register AdminUser do
  index do  
    column :id
    column :email  
    column :created_at  
    column :updated_at
    default_actions  
  end
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Admin User", :multipart => true do
      f.input :email
      f.input :password
    end    
    f.buttons
  end
  
end
