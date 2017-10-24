ActiveAdmin.register ReferencePoint do

  menu parent: 'Timeline', label: 'Point de références'


permit_params :year, :timeline_career, :background, :font, :background_id, :timeline_career_id, :font_id

  controller do
    def create
      super do |format|
        redirect_to "/admin/posts/new" and return if resource.valid?
      end
    end
  end
end
