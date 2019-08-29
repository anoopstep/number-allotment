Rails.application.routes.draw do
  namespace :api, as: nil, defaults: { format: 'json' } do
    namespace :v1, as: nil do
      resources :alloted_numbers, only: :create
    end
  end
end
