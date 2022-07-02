class Post < ApplicationRecord
  has_rich_text :content

  has_many :comments

  validates :title, length: { maximum: 255 }
  validates :title, presence: true
  validates :content, presence: true
end
