class AccessPolicy
  include AccessGranted::Policy

  def configure
    role :admin, proc { |user| user.admin } do
      can :create, Event
    end

    # role :usuario, proc { |user| user.registered? } do
    #   can :create, Post
    #   can :create, Comment
    #   can [:update, :destroy], Post do |post, user|
    #     post.author == user
    #   end
    # end
    #
    # role :publico do
    #
    # end
  end
end
