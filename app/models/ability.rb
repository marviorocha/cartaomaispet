class Ability
  include CanCan::Ability

  def initialize(user)

   can :manager, :all if user.role == "admin"
   can :read, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"


    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
