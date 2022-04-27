class Post < ApplicationRecord
  belongs_to :author

  validates :title, :body, :author_id, presence: true

  searchable do
    text :title
    text :author_name do
      author.name
    end
  end
end
