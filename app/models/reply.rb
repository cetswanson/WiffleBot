class Reply < ActiveRecord::Base

  belongs_to :user
  belongs_to :topic

  validates :body, null: false

end