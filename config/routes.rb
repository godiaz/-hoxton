Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :courses do
    resources :cateogories
  end

  get 'components', to: 'courses#components', as: :components
  get 'practices', to: 'courses#practices', as: :practices
  get 'packages', to: 'courses#packages', as: :packages
  get 'templates', to: 'courses#templates', as: :templates
  get 'plus_developer', to: 'courses#plus_developer', as: :plus_developer

end
