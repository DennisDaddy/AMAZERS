class Post < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
  belongs_to :category
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true

end
