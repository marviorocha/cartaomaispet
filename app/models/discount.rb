class Discount < ApplicationRecord
  belongs_to :discountable, polymorphic: true
  belongs_to :user
end
