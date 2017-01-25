ActiveAdmin.register Image do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :title, :image

  show do |t|
    attributes_table do
      row :title
      row :image do
        image.image? ? image_tag(image.image.url, height: '120') : content_tag(:span, "No photo yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :image, hint: f.image.image? ? image_tag(image.image.url, height: '120') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.actions
  end


end
