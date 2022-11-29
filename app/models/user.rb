class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_many :user_adresses
  has_one :cart
  has_one :admin_type
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable


end






# has_many :gossips
# belongs_to :city
# validates :password, presence: true, length: {minimum: 6}
# after_create :welcome_send

# def welcome_send
#     puts "IN !!!!!!!!!!"
#     UserMailer.welcome_email(self).deliver_now
# end