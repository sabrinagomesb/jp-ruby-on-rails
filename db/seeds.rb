# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new('[:spinner] Registering mining types...')
spinner.auto_spin

mining_types = [
  { description: 'Proof of Work', acronym: 'PoW' },
  { description: 'Proof of Stake', acronym: 'PoS' },
  { description: 'Proof of Capacity', acronym: 'PoC' }
]

mining_types.each do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end

spinner.success('(successful)')
spinner = TTY::Spinner.new('[:spinner] Registering coins...')
spinner.auto_spin

coins = [
  {
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://logodownload.org/wp-content/uploads/2017/06/bitcoin-logo-1-1.png',
    mining_type: MiningType.find_by(acronym: 'PoW')
  },
  {
    description: 'Ethereum',
    acronym: 'ETH',
    url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png',
    mining_type: MiningType.all.sample
  },
  {
    description: 'DogCoin',
    acronym: 'DOGE',
    url_image: 'https://upload.wikimedia.org/wikipedia/pt/d/d0/Dogecoin_Logo.png',
    mining_type: MiningType.all.sample
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success('(successful)')
