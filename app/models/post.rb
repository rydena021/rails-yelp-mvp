class Post < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, inclusion: 1..10

  belongs_to :user

end
