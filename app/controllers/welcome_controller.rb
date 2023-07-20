# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @nome = params[:nome]
  end
end
