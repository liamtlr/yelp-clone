class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, length: { minimum: 3 }, uniqueness: true
  validates :user_id, length: { minimum: 1 }, allow_nil: true

  def build_review_with_user_foreign_key(attributes = {}, user)
    attributes[:user] ||= user
    reviews.build(attributes)
  end

end
