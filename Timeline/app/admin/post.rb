ActiveAdmin.register Post do


  menu parent: 'Timeline', label: 'Posts'

  permit_params :title, :description, :img_url, :link, :date, :title_color, :circle_color, :font, :background, :reference_point, :background_id, :font_id, :reference_point_id
  controller do
    def create
      super do |format|
        redirect_to "/" and return if resource.valid?
      end
    end
  end
end
