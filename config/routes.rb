Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"


    # ** PREVIOUS WORK **
    # get "/all_movies_path" => "movies#all_movies_action"
    # get "/first_movie_path" => "movies#first_movie_action"
    # get "/single_actor" => "actors#single_actor_action"
    # get "/single_actor/:id" => "actors#single_actor_action"
    # post "/single_actor" => "actors#single_actor_action"
  end
end
