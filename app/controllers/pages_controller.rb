class PagesController < ApplicationController
  before_filter :authenticate, :only => [:vox]
  
  def home
    @title = "HOME"
  end
  
  def vox
    @user = current_user
    @current_channel = Channel.find_by_id(params[:current_channel_id])
    if @current_channel.nil?
      @current_channel = @user.channel
    end
    @title = "VOX | #{@current_channel.name.capitalize}"
    all_channels = Channel.find(:all)
    @favourites = all_channels.find_all do |channel|
      channel != @user.channel
    end
    @programmes = @current_channel.programmes
  end

  def contact
    @title = "CONTACT"
  end

  def about
    @title = "ABOUT"
  end
  
  private
  
    def authenticate
      deny_access unless signed_in?
    end

end
