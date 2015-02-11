class PostDataController < ApplicationController
  def create


    logger.info ''
    logger.info 'DATOS RECIBIDOS'
    logger.info ''
    logger.info params
    logger.info ''

    render :json => {
         :success => true,
         :message => "Data collected"
     }, :status => 200
    return

  end
end
