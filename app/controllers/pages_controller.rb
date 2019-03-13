class PagesController < ApplicationController

  def welcome
     @petshops = Petshop.take(10)
     @store = current_user.petshop
  end

  def destroy_logo

    @store = current_user.petshop

    respond_to do |format|
    if @store.logo.purge
    format.html  { redirect_to root_path, notice: 'Não foi possível deletar sua logo' }
    format.json { render :welcome, status: :ok, location: @petshop }
    else
    format.html { redirect_to root_path, notice: 'Sua logo foi apagada com sucesso!!!'}
    format.json { render json: @petshop.errors, status: :unprocessable_entity }
    end
  end

  end


end
