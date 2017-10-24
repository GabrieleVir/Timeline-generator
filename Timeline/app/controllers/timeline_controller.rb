class TimelineController < ApplicationController
  
  before_action :set_references, :set_posts

  def index
  	@timeline = TimelineCareer.last
  end

  private

  def set_references
  	@references = ReferencePoint.order('year desc')
  end

  def set_posts 
  	@posts = Post.order('year_month_order desc')
  end
end
