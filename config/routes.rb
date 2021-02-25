Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/name" => "params_practice#name"
  end

  namespace :api do
    get "/letter" => "params_practice#letter"
  end
  
  namespace :api do
    get "/number" => "params_practice#number"
  end
end
