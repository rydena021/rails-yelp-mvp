class User < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :state, inclusion: { in: %w(Minnesota Wisconsin Texas Alabama California Utah), allow_nil: false }

  has_many :posts, dependent: :destroy

end
