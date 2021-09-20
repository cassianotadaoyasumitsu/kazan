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

puts 'Create a new user...admin@kazan.com, password is "admin".'
kazan_admin = User.create(
  name: 'kazan_admin',
  email: 'kazan_admin@kazan.com',
  password: 'kazan_admin',
  password_confirmation:'kazan_admin',
  company_id: Company.where(name:'Kazan').first.id)
puts 'Finished'

puts 'Add the roles to admin'
  admin_role = Role.where(name:'admin').first
  kazan_admin = User.where(name:'kazan_admin').first
  kazan_admin.roles << Role.where(name:'admin').first
  kazan_admin.save
puts 'Finished'


puts 'Make admin@kazan.com as admin in the whole app.'
user = User.where(email: 'kazan_admin@kazan.com').first
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
  company_id: Company.where(name:'Kazan').first.id)
puts 'Finished'

puts 'Add the roles to manager'
  manager_role = Role.where(name:'manager').first
  kazan_manager = User.where(name:'kazan_manager').first
  kazan_manager.roles << Role.where(name:'manager').first
  kazan_manager.save
puts 'Finished'

puts 'Create a new user as Kazan\'s employee1", email:"kazan_employee1@kazan.com", password"kazan_employee1"..'
  kazan_employee = User.create(
  name: 'kazan_employee1',
  email: 'kazan_employee1@kazan.com',
  password: 'kazan_employee1',
  password_confirmation:'kazan_employee1',
  company_id: Company.where(name:'Kazan').first.id)
puts 'Finished'

puts 'Add the roles to employee'
  employee_role = Role.where(name:'employee').first
  kazan_employee = User.where(name:'kazan_employee1').first
  kazan_employee.roles << Role.where(name:'employee').first
  kazan_employee.save
puts 'All Done'




