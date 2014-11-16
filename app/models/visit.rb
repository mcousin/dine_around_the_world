class Visit < ActiveRecord::Base
  attr_accessible :number_of_visits, :restaurant_id, :user_id
  
  belongs_to :user
  belongs_to :restaurant
end
