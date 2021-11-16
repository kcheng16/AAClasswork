Rails.application.routes.draw do
  namespace :api, defaults: {format: :json}

  root to: 'static_pages#root'
end
