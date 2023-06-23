# frozen_string_literal: true

json.array! @coins, partial: 'coins/coin', as: :coin
