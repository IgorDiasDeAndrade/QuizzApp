namespace :dev do
  desc "TODO"
  task setup: :environment do
    if Rails.env.development?

      %x(rails db:drop db:create db:migrate dev:add_admins dev:add_profiles)

    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  desc "Cria adiministrador padrão"
  task add_admins: :environment do
    Admin.create!(
      email: 'admin@admin.com',
      password: 123456,
      password_confirmation: 123456
    )
  end

  desc "Cria adiministrador padrão"
  task add_profiles: :environment do
    Profile.create!(
      email: 'profile@profile.com',
      password: 123456,
      password_confirmation: 123456
    )
  end

end
