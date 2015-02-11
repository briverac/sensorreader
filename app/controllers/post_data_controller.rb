class PostDataController < ApplicationController
  def create


    logger.info ''
    logger.info 'DATOS RECIBIDOS'
    logger.info ''
    logger.info params
    puts ''

    render :json => {
         :success => true,
         :message => "Data collected"
     }, :status => 422
    return

  end
end
