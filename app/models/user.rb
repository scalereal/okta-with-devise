class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, omniauth_providers: [:oktaoauth]

  def self.from_omniauth(auth)
    User.find_or_create_by(email: auth["info"]["email"]) do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.email = auth['info']['email']
    end

  end
end
