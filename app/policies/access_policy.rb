class AccessPolicy
  include AccessGranted::Policy

  def configure
    role :admin, proc { |user| user.admin? } do
      can :create, Event
      can :edit, Event
      can :update, Event
      can :destroy, Event
      can :create, User
    end

    role :cliente, proc { |user| user.client? } do
      can :create, Event
      # can [:update, :destroy], Post do |post, user|
      #   post.author == user
      # end
    end
  end
end
