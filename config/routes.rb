Wikitikkitembo::Application.routes.draw do
  devise_for :users
  resources :tikkipages
  get 'about' => "welcome/index"

  root 'welcome#index'

end
