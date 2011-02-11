class PagesController < ApplicationController
  
  def home
    @title = "HOME"
  end
  
  def vox
    @title = "VOX"
  end

  def contact
    @title = "CONTACT"
  end

  def about
    @title = "ABOUT"
  end

end
