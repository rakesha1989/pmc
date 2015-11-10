class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :profiles
has_many :clients
has_many :projects
has_many :vendors
has_many :permissions
has_many :roles, through: :permissions

def role?(role)
		self.roles.pluck(:name).include?(role)
end

def setup_user_role
		if user.roles.empty?
			user.roles << Role.third
	end
end
 
end
