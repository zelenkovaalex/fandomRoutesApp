class SessionsController < ApplicationController
  def new
    # Метод отображает форму входа
  end

  def create
    # Метод обрабатывает отправку формы входа
    flash[:notice] = "Вход выполнен успешно"
    redirect_to root_path
  end
end