class UsersController < ApplicationController
  def new
    # Метод отображает форму регистрации
  end

  def create
    # Метод обрабатывает отправку формы регистрации
    flash[:notice] = "Регистрация прошла успешно"
    redirect_to root_path
  end
end