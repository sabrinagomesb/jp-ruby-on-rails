# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Dropping DB...') do
        `rails db:drop`
      end

      show_spinner('Creating DB...') do
        `rails db:create`
      end

      show_spinner('Migrating DB...') do
        `rails db:migrate`
      end

      show_spinner('Seeding DB...') do
        `rails db:seed`
      end

      # EXEMPLO SEM O MÉTODO show_spinner - O código estava repetindo para cada comando db.
      # spinner = TTY::Spinner.new("[:spinner] Dropping DB...")
      # spinner.auto_spin
      # %x(rails db:drop)
      # spinner.success("(successful)")

    else
      puts "Não é possível executar este comando em ambiente de #{Rails.env}"
    end
  end

  private

  def show_spinner(start_msg, end_msg = 'successful')
    spinner = TTY::Spinner.new("[:spinner] #{start_msg}")
    spinner.auto_spin
    yield
    spinner.success("(#{end_msg})")
  end
end
