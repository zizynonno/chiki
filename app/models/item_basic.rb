class ItemBasic < ApplicationRecord
  belongs_to :friend, optional: true
end
