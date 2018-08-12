class Post < ApplicationRecord
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true

end
