Wikitikkitembo::Application.routes.draw do
  devise_for :users
  resources :tikki_pages
  get 'about' => "welcome/index"

  root 'welcome#index'

end
