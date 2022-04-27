class Author < ApplicationRecord
  has_many :posts

  validates :name, :email, presence: true
end
