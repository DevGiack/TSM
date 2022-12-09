class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_many :user_addresses
  has_one :cart
  has_one :admin_type

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  after_create :welcome_send
    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end

end

