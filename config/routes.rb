Rails.application.routes.draw do
  get 'event_entries/create'

  resources :events, only: %i[index show] do
    resource :event_entry, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
