Rails.application.routes.draw do
  #Ruta del api
  post '/postdata', to: 'post_data#create'
end
