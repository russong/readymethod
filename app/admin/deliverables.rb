ActiveAdmin.register Deliverable do
  menu :priority => 4
form :html => { :enctype => "multipart/form-data" } do |f|
  f.inputs "Deliverables", :multipart => true do
    f.input :activity_id, :collection => Activity.all.map {|au| [au.name, au.id]} , :include_blank => false, :as => :select
    f.input :file, label: "Attach a file", as: :file
    f.input :deliverable_name, label: "Deliverable Name", as: :string
  end    
  f.buttons
end

  index do
    column :id
    column "Deliverable" do |activity_deliverables|
      activity_deliverables.file_file_name unless activity_deliverables.file_file_name.blank?
    end
    column :activity
    column :created_at
    default_actions
  end

    show do
      h3 "Deliverable Details"
      div :class => "panel_contents" do
      div :class => "attributes_table deliverable" do
        table do
          tr do
            th "Deliverable Name"
            td deliverable.deliverable_name
          end
          tr do
            th "Id"
            td deliverable.id
          end
          tr do
            th "Item"
            td deliverable.activity.name
          end
          tr do
            th "Deliverable File Name"
            td deliverable.file_file_name
          end
          tr do
            th "Deliverable Content Type"
            td deliverable.file_content_type
          end
          tr do
            th "Deliverable File Size"
            td deliverable.file_file_size
          end
          tr do
            th "Deliverable Updated At"
            td deliverable.file_updated_at
          end
          tr do
            th "Created At"
            td deliverable.created_at
          end
          tr do
            th "Updated At"
            td deliverable.updated_at
          end
          tr do
            th "Download"
            td link_to "Download", "#{deliverable.file.url}"
          end
        end
        end
      end
    end
  
end
