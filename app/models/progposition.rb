class Progposition < ActiveRecord::Base
  belongs_to :channel
  belongs_to :programme
end
