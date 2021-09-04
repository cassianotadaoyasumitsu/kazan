namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
   if Rails.env.development?
     show_spinner("Apagando BD...") { %x(rails db:drop) }
     show_spinner("Criando BD...") { %x(rails db:create) }
     show_spinner("Migrando BD...") { %x(rails db:migrate) }
     show_spinner("Criando user padrão...") { %x(rails dev:add_default_user) }
     show_spinner("Criando tantosha padrão...") { %x(rails dev:add_default_tantosha) }
     show_spinner("Criando funcionario padrão...") { %x(rails dev:add_default_employee) }
   else
     puts "Você não está em ambiente de desenvolvimento!"
   end
 end

 desc "Adiciona o usuario padrão"
 task add_default_user: :environment do
  User.create!(
     email: 'user@user.com',
     password: 123456,
     password_confirmation: 123456
     )
 end

 desc "Adiciona o tantosha padrão"
 task add_default_tantosha: :environment do
   Tantosha.create!(
     email: 'tantosha@tantosha.com',
     password: 123456,
     password_confirmation: 123456
     )
 end

 desc "Adiciona o funcionario padrão"
 task add_default_employee: :environment do
   Employee.create!(
     email: 'employee@employee.com',
     password: 123456,
     password_confirmation: 123456
     )
 end




 private

 def show_spinner(msg_start, msg_end = "Concluído!")
   spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
   spinner.auto_spin
   yield
   spinner.success("(#{msg_end})")
 end
end
