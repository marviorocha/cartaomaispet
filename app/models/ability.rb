class Ability
  include CanCan::Ability

  def initialize(user)


      if user.role == "admin"
        can :create, :all
        can :update, :all
        can :destroy, :all
        can :read, :all
      else

      end

      if user.role == "user"
        can :create, Animal
        can :update, Animal
        can :destroy, Animal

      else

      end

    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
