class PagesController < ApplicationController

  def welcome
     @petshops = Petshop.take(10)
  end

end
