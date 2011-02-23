class ChannelsController < ApplicationController
  
  def index
    @title = "Channels"
    @channels = Channel.find(:all)
  end
  
  def show
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
  
end
