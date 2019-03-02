class PagesController < ApplicationController

  def welcome
     @petshops = Petshop.take(10)
     @store = current_user.petshop
  end

end
