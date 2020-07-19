# Вывод главной страницы, статических страниц и динамических страниц Page
class PagesController < ApplicationController

  layout :calc_layout

  # Вывод главной страницы
  def home
  end

  def about
  end

  def page
    @slug = params[:slug]
  end

  private

  def calc_layout
    case action_name
    when 'home'
      'home'
    else
      'application'
    end
  end
end
