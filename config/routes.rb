Rails.application.routes.draw do
  resources :questions

  resources :posts

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
end
