ActiveAdmin.register TimelineCareer do
  menu parent: 'Timeline', label: 'Timelines'


  permit_params :name, :background, :font, :line_color, :background_id, :font_id

    form do |f|

         f.inputs "Timeline Details" do

              f.input :background, :as => :select, 
                            :collection => Background.all.map{|u| ["Name: #{u.name}, Color: #{u.color} ", u.id]}

              f.input :font, :as => :select, 
                            :collection => Font.all.map{|i| ["Name: #{i.font_family}", i.id]}
              f.input :name
              f.input :line_color
         end
        f.actions 
    end

  controller do
    def create
      super do |format|
        redirect_to "/admin/reference_points/new" and return if resource.valid?
      end
    end
  end
end
