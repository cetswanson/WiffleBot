class Subforum < ActiveRecord::Base

  belongs_to :user
  has_many :topics

  validates :title, presence: true

end