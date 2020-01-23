class ItemValue < ApplicationRecord
  belongs_to :friend optional: true
  belongs_to :item_key, optional: true
end
