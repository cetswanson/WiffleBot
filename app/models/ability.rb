class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new
      if user.admin?
        can :manage, :all
      else
        alias_action :create, :read, :update, :destroy, :to => :crud
        can :crud, User
      end
  end
end
