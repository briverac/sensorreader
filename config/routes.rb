Rails.application.routes.draw do
  post '/postdata', to: 'post_data#create'
end
