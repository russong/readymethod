ActiveAdmin.register Blog do

  menu :priority => 5#,:label => "Comments"
  
  index do  
    column :id
    column :activity  
    column :content  
    column :created_at  
    column :updated_at
    default_actions  
  end
  
end
