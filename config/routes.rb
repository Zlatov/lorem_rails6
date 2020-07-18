Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Главная страница
  root "pages#home"
  # Статические страниц
  get   "about" => "pages#about"
  match "pages/:slug" => "pages#page", as: "page", via: [:get, :post]
end
