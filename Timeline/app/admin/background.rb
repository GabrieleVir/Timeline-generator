ActiveAdmin.register Background do

  menu parent: 'Timeline', label: 'Backgrounds'


permit_params :color, :name
  controller do
    def create
      super do |format|
        redirect_to "/admin/timeline_careers/new" and return if resource.valid?
      end
    end
  end
end
