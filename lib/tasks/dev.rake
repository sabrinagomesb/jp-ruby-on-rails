namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Dropping DB...")
      spinner.auto_spin
      %x(rails db:drop)
      spinner.success("(successful)")

      spinner = TTY::Spinner.new("[:spinner] Creating DB...")
      spinner.auto_spin
      %x(rails db:create)
      spinner.success("(successful)")

      spinner = TTY::Spinner.new("[:spinner] Migrating DB...")
      spinner.auto_spin
      %x(rails db:migrate)
      spinner.success("(successful)")

      spinner = TTY::Spinner.new("[:spinner] Seeding DB...")
      spinner.auto_spin
      %x(rails db:seed)
      spinner.success("(successful)")
    else
      puts "Não é possível executar este comando em ambiente de #{Rails.env}"
    end
  end
end
