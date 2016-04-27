Rails.application.routes.draw do

  resources :people
  resources :events do
    resources :attendees, :controller => 'event_attendees'
    resource :location, :controller => 'event_locations'
  end
  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  get "events" => "events#index"
  root :to => "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
