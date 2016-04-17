class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :omniauth_providers => [:facebook]

  has_many :boards

  private
    def self.from_omniauth(auth)
      user = where(provider: auth.provider, uid:auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid      = auth.uid
        user.email    = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name     = auth.info.name
    end

    # user.set_provider_image('facebook', auth.info.image)

    user
  end
end
