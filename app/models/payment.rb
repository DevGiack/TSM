class Payment < ApplicationRecord
    belongs_to :order
    has_one :user, :through => :order
end
