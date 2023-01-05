class CheckoutController < ApplicationController
      def create
        # permet de créer une transaction bancaire via Stripe d'un montant égal a @total
        @total = params[:total].to_d
        @cart = CartItem.all.where(owner_id: session[:shopping_cart_id])
        @items = []
        @cart.each do | cart_item |
          @items.push({
            price_data: {
              currency: 'eur',
              unit_amount: (cart_item.price*100).to_i,
              product_data: {
                name: ref[cart_item.item_id][:name],
              },
            },
            quantity: cart_item.quantity,
          })
        end
        @session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],       
          line_items: @items,
          mode: 'payment',
          customer_email: current_user.email,
          success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
          cancel_url: checkout_cancel_url
        )
        redirect_to @session.url, allow_other_host: true
      end
    
      def success
        # gestion du succès de paiement
        @session = Stripe::Checkout::Session.retrieve(params[:session_id])
        @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
        @cart = CartItem.all.where(owner_id: session[:shopping_cart_id])
        @cart.delete_all
      end
  
    def cancel
      # gestion de l'annulation du paiement
    end
end