Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do 
    resources :todos, only:[:index, :show, :create, :destroy, :update] #since we are nesting under api... all of them will have /api/...
  end

  #open this w localhost 3k 
  root to: 'static_pages#root'

end
