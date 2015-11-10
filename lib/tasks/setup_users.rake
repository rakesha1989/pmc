desc "setup users and roles"
task :setup_users => :environment do
Role.create(name: "admin")
Role.create(name: "design")
Role.create(name: "user")

user = User.new
user.email = "admin@gmail.com"
user.password = "admin123"
user.save
user.roles << Role.first

user = User.new
user.email = "design@gmail.com"
user.password = "design456"
user.save
user.roles << Role.second

users = User.where('email != ? AND email != ?', "admin@gmail.com", "design@gmail.com")
for user in users	
	user.roles << Role.third
end 
end