class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[github]

         validates :username, presence: true

         def self.from_omniauth(auth)
          where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.email = auth.info.email
            user.username = auth.info.nickname
            user.password = Devise.friendly_token[0, 20]
          end
        end

  # Idea for how users will interact with heros, teams, comics
  
  # has_many :heros
  # has_many :teams
  # has_many :comics, through: :heros
  # will need to write 'belongs_to :users' for heros, teams, comics
  # add foreign key?

end
