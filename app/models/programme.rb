# == Schema Information
# Schema version: 20110216230302
#
# Table name: programmes
#
#  id                   :integer         not null, primary key
#  title                :string(255)
#  pid                  :string(255)
#  short_synopsis       :string(255)
#  medium_synopsis      :string(255)
#  long_synopsis        :string(255)
#  duration             :integer
#  image_url            :string(255)
#  source_radio_station :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class Programme < ActiveRecord::Base
  has_many :progpositions
  has_many :channels, :through => :progpositions
end
