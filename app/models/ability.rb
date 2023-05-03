class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    return unless user.present?

    can :manage, Category, user_id: user.id
    can :manage, Payment, user_id: user.id
  end
end
