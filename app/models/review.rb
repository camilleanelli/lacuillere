class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, presence: true,
  :numericality => { :only_intger => true }
  validates :content, presence: true
  validates :rating, :inclusion => { :in => 0..5 }
  validates :restaurant_id, presence: true

end
