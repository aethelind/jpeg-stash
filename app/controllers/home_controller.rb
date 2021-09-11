class HomeController < ApplicationController
  def index
    # Image.order('created_at desc')
    @images = Image.all
  end
end
