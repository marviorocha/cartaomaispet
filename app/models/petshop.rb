class Petshop < ApplicationRecord

belongs_to :user
has_one_attached :logo
validates :title, presence: true


# seach form
def self.search(search)
    if search
      where(["cidade LIKE ?","%#{search}%"])
    else
    all
    end
end





end
