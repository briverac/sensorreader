class PostDataController < ApplicationController

  #Metodo que se llama para guardar los datos del sensor
  def create

    #si se reciben los datos
    if !(params[:post_datum].to_s == "{}")
      #Se escriben los datos en el log
      Rails.logger.info 'DATOS RECIBIDOS'
      Rails.logger.info params[:post_datum]

      render :json => {
           :success => true,
           :message => 'Data collected'
       }, :status => 200
      return

    #Si no se reciben datos se notifica
    else
      Rails.logger.info 'NO LLEGARON DATOS'
      render :json => {
          :success => false,
          :message => 'No data collected'
      }, :status => 422
    end

  end
end
