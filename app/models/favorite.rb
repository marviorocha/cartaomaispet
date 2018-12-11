class Favorite < ApplicationRecord
  belongs_to :petshop
  belongs_to :user
end
