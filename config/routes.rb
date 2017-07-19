Rails.application.routes.draw do
  resources :institutions
  get '/university' => "institutions#index"
  get '/university/:id' => "institutions#show"
end
