class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable.
         :confirmable

  has_secure_password

  has_many :subforums
  has_many :topics
  has_many :replies

end