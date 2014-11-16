class Restaurant < ActiveRecord::Base
  attr_accessible :name, :nationality
  
  has_many :visits
  has_many :users, :through => :visits

end
