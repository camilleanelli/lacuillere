class Restaurant < ActiveRecord::Base
  validates :name, presence :true
  validates :address, presence :true
  validates_inclusion_of :category, :in => VALID_NAMES
  VALID_NAMES = %w(chinese italian japanese french belgian Paul)

  has_many :reviews, dependent: :destroy

end
