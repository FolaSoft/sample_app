class StaticPagesController < ApplicationController
  def home
  	 # Commenting single style Ruby's if statement
  	 #@micropost = current_user.microposts.build if signed_in?
  	 if signed_in?
  	 	@micropost = current_user.microposts.build
  	 	@feed_items = current_user.feed.paginate(page: params[:page])
  	 end
  end

  def help
  end

  def about
  end

  def contact
  end
end
