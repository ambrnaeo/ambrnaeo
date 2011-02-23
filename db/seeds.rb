# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

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

channels = Channel.create ([
  {
    :id => 1,
    :name => "Primal",
    :image => "whaha",
    :description => "in principio creavit ben et anthony programmum"
  }  
])

programmes = Programme.create([
  {
    :id => 1,
    :title => "Money Box Live",
    :pid => "b00sxj2b",
    :short_synopsis => "Vincent Duggleby and a panel of guests answer calls",
    :medium_synopsis => "Vincent Duggleby and a panel of guests answer calls",
    :long_synopsis => "Vincent Duggleby and a panel of guests answer calls",
    :duration => 30,
    :image_url => "blah",
    :source_radio_station => "Radio4"
  },
  {
    :id => 2,
    :title => "Science In Action",
    :pid => "p006xb3h",
    :short_synopsis => "Genes in action",
    :medium_synopsis => "Genes in action CubeSail",
    :long_synopsis => "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    :duration => 28,
    :image_url => "whibble",
    :source_radio_station => "BBCWorldService"
  },
  {
    :id => 3,
    :title => "Open Country",
    :pid => "b00pzp5k",
    :short_synopsis => "helen mark finds a rural lifestyle",
    :medium_synopsis => "and shags random villagers",
    :long_synopsis => "in their farmyard stalls",
    :duration => 27,
    :image_url => "flibble",
    :source_radio_station => "Radio4"
  },
  {
    :id => 4,
    :title => "Americana",
    :pid => "b00rqlrf",
    :short_synopsis => "matt frie looks at america",
    :medium_synopsis => "and opens his mouth with joy",
    :long_synopsis => "at all the beef burgers",
    :duration => 30,
    :image_url => "obama",
    :source_radio_station => "Radio4"
  },
  {
    :id => 5,
    :title => "5 Live Breakfast",
    :pid => "b00rrk90",
    :short_synopsis => "all the main news with niki campbell",
    :medium_synopsis => "and shags random villagers",
    :long_synopsis => "in their farmyard stalls",
    :duration => 180,
    :image_url => "flibble",
    :source_radio_station => "5live"
  },
  {
    :id => 6,
    :title => "news hour",
    :pid => "p00767y7",
    :short_synopsis => "a greek odyssey",
    :medium_synopsis => "and shags random villagers",
    :long_synopsis => "in their farmyard stalls",
    :duration => 55,
    :image_url => "flibble",
    :source_radio_station => "BBCWorldService"
  }
])

progpositions = Progposition.create([
  {
    :channel_id => 1,
    :programme_id => 1,
    :position => 1
  },  
  {
    :channel_id => 1,
    :programme_id => 3,
    :position => 2
  },  
  {
    :channel_id => 1,
    :programme_id => 2,
    :position => 3
  },  
  {
    :channel_id => 1,
    :programme_id => 4,
    :position => 4
  },  
  {
    :channel_id => 1,
    :programme_id => 5,
    :position => 5
  },  
  {
    :channel_id => 1,
    :programme_id => 6,
    :position => 6
  }    
])