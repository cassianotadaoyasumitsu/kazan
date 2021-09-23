puts 'Cleaning database'
Request.destroy_all
Role.destroy_all
User.destroy_all
Company.destroy_all
puts 'Database cleaned.'

puts 'Create roles, "admin"'
admin = Role.create(
   name:'admin'
   )
puts'Finished'

puts 'Create roles, "manager"'
manager = Role.create(
   name:'manager'
   )
puts'Finished'

puts 'Create roles, "employee"'
employee = Role.create(
   name:'employee'
   )
puts'Finished'

puts 'Create Company "Kazan"...'
company = Company.create(
    name: 'Kazan',
    owner:'Cassiano',
    phone:'070-1234-5678',
    email:'cassiano@live.jp',
    address: 'Yokohama')
puts 'Finished'

puts 'Create a new user as "kazan_admin@kazan.com", password is "kazan_admin".'
kazan_admin = User.create(
  name: 'kazan_admin',
  email: 'kazan_admin@kazan.com',
  password: 'kazan_admin',
  password_confirmation:'kazan_admin',
  company_id: Company.find_by(name:'Kazan').id,
  team_id: Team.find_by(name: "Customer Success").id
  )
puts 'Finished'

puts 'Add the roles to admin'
  admin_role = Role.find_by(name:'admin')
  kazan_admin = User.find_by(name:'kazan_admin')
  kazan_admin.roles << Role.find_by(name:'admin')
  kazan_admin.save
puts 'Finished'


puts 'Make admin@kazan.com as admin in the whole app.'
user = User.find_by(email: 'kazan_admin@kazan.com')
user.password = 'kazan_admin'
user.admin = true
user.save!
puts'Finished'


puts 'Create a new user as Kazan\'s manager", email:"kazan_manager@kazan.com", password"kazan_manager"..'
  kazan_mg = User.create(
  name: 'kazan_manager',
  email: 'kazan_manager@kazan.com',
  password: 'kazan_manager',
  password_confirmation:'kazan_manager',
  company_id: Company.find_by(name:'Kazan').id,
  team_id: Team.find_by(name: "Customer Success").id
  )
puts 'Finished'

puts 'Add the roles to manager'
  manager_role = Role.find_by(name:'manager')
  kazan_manager = User.find_by(name:'kazan_manager')
  kazan_manager.roles << Role.find_by(name:'manager')
  kazan_manager.save
puts 'Finished'

puts 'Create a new user as Kazan\'s employee1", email:"kazan_employee1@kazan.com", password"kazan_employee1"..'
  kazan_employee = User.create(
  name: 'kazan_employee1',
  email: 'kazan_employee1@kazan.com',
  password: 'kazan_employee1',
  password_confirmation:'kazan_employee1',
  company_id: Company.find_by(name:'Kazan').id,
  team_id: Team.find_by(name: "Customer Success").id
  )
puts 'Finished'

puts 'Add the roles to employee'
  employee_role = Role.find_by(name:'employee')
  kazan_employee = User.find_by(name:'kazan_employee1')
  kazan_employee.roles << Role.find_by(name:'employee')
  kazan_employee.save
puts 'All Done'

puts 'Create roles, "director"'
admin = Role.create(
   name:'director'
   )
puts'Finished'

puts 'Create a new user as director", email:"kazan_director@kazan.com", password"kazan_director"..'
  kazan_mg = User.create(
  name: 'kazan_director',
  email: 'kazan_director@kazan.com',
  password: 'kazan_director',
  password_confirmation:'kazan_director',
  company_id: Company.find_by(name:'Kazan').id,
  team_id: Team.find_by(name: "Customer Success").id
  )
puts 'Finished'

puts 'Add the roles to director'
  kazan_director = User.find_by(name:'kazan_director')
  kazan_director.roles << Role.find_by(name:'director')
  kazan_director.save
puts 'Finished'




