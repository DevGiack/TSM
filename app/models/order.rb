class Order < ApplicationRecord
    belongs_to :user
    has_one :payment
    has_one :user_address, :through => :user
end
