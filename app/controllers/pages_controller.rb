class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def batman
  end

  def superman
  end

  def batmanvssuperman
  end

  def save_votossuperman
    Votossuperman.create(name: params[:name], email: params[:email])
    redirect_to pages_batmanvssuperman_path, notice: 'El usuario se ha creado exitosamente'
  end

  def save_votosbatman
    Votosbatman.create(name: params[:name], email: params[:email])
    redirect_to pages_batmanvssuperman_path, notice: 'El usuario se ha creado exitosamente'
  end

end
