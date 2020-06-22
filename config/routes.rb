Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do 
    resources :comments
  end
  get 'search', to: "articles#search"
  root 'welcome#index'
end
