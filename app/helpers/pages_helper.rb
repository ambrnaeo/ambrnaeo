module PagesHelper
  
  def find_channel_class(channel_id)
    if channel_id == @current_channel.id
      "selectedstation"
    else
      "unselectedstation"
    end
  end
  
end
