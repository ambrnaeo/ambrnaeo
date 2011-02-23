# == Schema Information
# Schema version: 20110216230302
#
# Table name: channels
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  image       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Channel < ActiveRecord::Base
  has_many :users
  has_many :favourites
  has_many :progpositions
  has_many :programmes, :through => :progpositions
    
end
