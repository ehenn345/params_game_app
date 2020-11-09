Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get '/do_params' => "parameter#all_caps"
    get "/guess_a_number/:number" => "parameter#number_game"
    post "/body_params" => "parameter#body"
    post "/guess_a_number" => "parameter#number"
    post "/weird_route" => "parameter#strange"
    
   end
end
