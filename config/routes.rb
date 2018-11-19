Rails.application.routes.draw do
  resources :pages, only: [:show]
  resources :categories, only: [:show]
  namespace :admin do
    resources :pages #/admin/pages
  	resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  Page.where.not("slug", nil).all.each do |page|
    get "/#{page.slug}", controller: "pages", action: "show" , id: page.id
  end
end
