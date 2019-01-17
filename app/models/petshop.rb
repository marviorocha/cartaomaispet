class Petshop < ApplicationRecord

belongs_to :user



# seach form
def self.search(search)
    if search

      where(["cidade LIKE ?","%#{search}%"])

    else
    all
    end

end


end
