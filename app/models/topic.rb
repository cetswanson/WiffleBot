class Topic < ActiveRecord::Base

  belongs_to :user
  belongs_to :subforum
  has_many :replies

  validates :title, presence: true

end