class Petshop < ApplicationRecord

 



# seach form
def self.search(search)
    if search

      where(["cidade LIKE ?","%#{search}%"])

    else
    all
    end

end


end
