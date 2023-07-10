# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cadastrando moedas..."

Coin.create!(description: 'Bitcoin', acronym: 'BTC', url_image: 'https://logodownload.org/wp-content/uploads/2017/06/bitcoin-logo-1-1.png')

Coin.create!(description: 'Ethereum', acronym: 'ETH', url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png')

Coin.create!(description: 'DogCoin', acronym: 'DOGE', url_image: 'https://upload.wikimedia.org/wikipedia/pt/d/d0/Dogecoin_Logo.png')

puts "Moedas cadastradas com sucesso."
