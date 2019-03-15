class PagesController < ApplicationController

  def welcome
     @petshops = Petshop.take(10)
     @store = current_user.petshop
  end

  def destroy_logo

    @store = User.all

    respond_to do |format|

      format.html
      format.json { render json: @store}

    end

  end


end
