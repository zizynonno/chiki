class Friend < ApplicationRecord
  belongs_to :user
  has_many :item_values, dependent: :destroy
  has_many :item_basics, dependent: :destroy
  validates :user_id, presence: true
end
