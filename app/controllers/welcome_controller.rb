class WelcomeController < ApplicationController

  def index
  	@posts = Post.all.order("created_at desc").paginate(page: params[:page], per_page:5)
  	@insurances = Insurance.all.order("created_at desc").paginate(page: params[:page], per_page: 4)
  end

end
