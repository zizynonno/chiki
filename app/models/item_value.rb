class ItemValue < ApplicationRecord
  belongs_to :friend, :item_key, optional: true
end
