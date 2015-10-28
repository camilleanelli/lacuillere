class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, :inclusion => { :in => 0..5,
    :message => " should be between 0 to 5" }
end
