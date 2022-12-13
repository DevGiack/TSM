module OrdersHelper
    def addresses_count
        UserAddress.where(user_id: current_user.id).count
    end
end
