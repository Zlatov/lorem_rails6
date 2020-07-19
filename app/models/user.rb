class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable                - письмо с инструкциями для подтверждения аккаунта
  # :lockable                   - блокирует аккаунт после количества неудачных попыток авторизации
  # :timeoutable                - продолжительность сессии активности пользователя в системе
  # :trackable                  - ведет статистику количества входов, учитывает время и IT-адреса
  # :omniauthable               - поддержку Omniauth https://github.com/intridea/omniauth
  # :database_authenticatable   - входа на основе зашифрованного и хранимого в базе данных пароля
  # :registerable               - позволяет редактировать и удалять аккаунты
  # :recoverable                - инструкции по восстановлению на почту
  # :rememberable               - запоминать пользователей на основе cookies
  # :validatable                - инструменты валидации e-mail и пароля
  devise :database_authenticatable,
    :confirmable,
    :lockable,
    :timeoutable,
    :trackable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable
end
