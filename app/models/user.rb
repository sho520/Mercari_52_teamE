class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook google_oauth2]
        #  :omniauthable, omniauth_providers: %i[facebook]
    # omniauthのコールバック時に呼ばれるメソッド
    def self.find_for_oauth(auth)
      sns = SnsCredential.where(uid: auth.uid, provider: auth.provider).first
      unless sns
        @user = User.create(
        nickname:    auth.info.name,
        email:    auth.info.email,
        password: Devise.friendly_token[0,20]
        )
        sns = SnsCredential.create(
        user_id: @user.id,
        uid: auth.uid,
        provider: auth.provider
        )
     end
      sns
      @user
    end

end
