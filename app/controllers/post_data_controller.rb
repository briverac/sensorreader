class PostDataController < ApplicationController

  #Metodo que se llama para guardar los datos del sensor
  def create

    #si se reciben los datos
    if !(params[:post_datum].to_s == "{}")
      #Se escriben los datos en el log
      Rails.logger.warn ''
      Rails.logger.warn 'DATOS RECIBIDOS'
      Rails.logger.warn ''
      Rails.logger.warn params[:post_datum]
      Rails.logger.warn ''

      render :json => {
           :success => true,
           :message => 'Data collected'
       }, :status => 200
      return

    #Si no se reciben datos se notifica
    else
      Rails.logger.warn ''
      Rails.logger.warn 'NO LLEGARON DATOS'
      Rails.logger.warn ''
      render :json => {
          :success => false,
          :message => 'No data collected'
      }, :status => 422
    end

  end
end
