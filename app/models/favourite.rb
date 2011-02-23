# == Schema Information
# Schema version: 20110216230302
#
# Table name: favourites
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  channel_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :channel
  
end
