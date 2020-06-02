Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/actor_list" => "actors#find_actor"
    get "/movie_list" => "movies#find_movie"
    get "/display_actor" => "actors#find_actor_query"
    get "/display_actor2/:id" => "actors#find_actor_segment"
    post "/display_actor3" => "actors#find_actor_query"
  end
end
