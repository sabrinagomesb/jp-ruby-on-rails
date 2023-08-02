# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    # captura a informação do locales, que será recebida através de um parametro da url. Se essa informação for recebida via url, ela será armazenada dentro de cookies.
    if params[:locale]
      cookies[:locale] = params[:locale]
    end

    # verifica se tem alguma locale guardado dentro de "cookies[:locale], se houver verifica se o locale atual é diferente do guardado no cookie, se for, altera i18n.locale para o local guardado no cookies"

    if cookies[:locale]
      if I18n.locale != cookies[:locale]
        I18n.locale = cookies[:locale]
      end
    end
  end
end
