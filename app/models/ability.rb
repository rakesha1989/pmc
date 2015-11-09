class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role? "admin"
        can :manage, :all
    elsif user.role? "user"
        can :manage, :all
    elsif user.role? "design"
        can :read, [Vendor,Client]        
    end
  end
end
