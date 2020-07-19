Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Главная страница
  root "pages#home"
  # Статические страниц
  get   "about" => "pages#about"
  get   "pages/ilorem"
  match "pages/:slug" => "pages#page", as: "page", via: [:get, :post]

  # Добавляем роуты с помощью метода devise_for от гема device.
  # devise_for :users
  # Для расширения поведений контроллеров сгенерируем их и укажем в опциях:
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks',
  }

  # Изучение ActionCable
  match 'action_cable/show', via: [:get, :post]
  get   'action_cable/room/:id' => 'action_cable#room', as: 'action_cable_room'
end
