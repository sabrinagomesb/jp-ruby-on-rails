# frozen_string_literal: true

class Coin < ApplicationRecord
  # chave estrangeira para mining_type
  belongs_to :mining_type
end
