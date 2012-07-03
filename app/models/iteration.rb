class Iteration < ActiveRecord::Base
  belongs_to :project
  attr_accessible :iteration
end
