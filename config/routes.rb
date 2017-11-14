Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/create'

  root 'welcome#index'
  match '/' => 'welcome#create', via: :all
end
