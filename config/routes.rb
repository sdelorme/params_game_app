Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/name/:name" => "params_practice#name"
    get "/letter/:name" => "params_practice#letter"
    get "/number/:number" => "params_practice#number"
    post "/post_number" => "params_practice#number"
    post "/credentials" => "params_practice#credentials"
  end

end
