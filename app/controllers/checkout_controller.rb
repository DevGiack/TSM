class CheckoutController < ApplicationController
    def create
      # permet de créer une transaction bancaire via Stripe d'un montant égal a @total
      Stripe.api_key = 'sk_test_VePHdqKTYQjKNInc7u56JBrQ'
      @total = params[:total].to_d
      @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [
          {
            price_data: {
              currency: 'eur',
              unit_amount: (@total*100).to_i,
              product_data: {
                name: 'Rails Stripe Checkout',
              },
            },
            quantity: 1
          },
        ],
        mode: 'payment',
        success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
        cancel_url: checkout_cancel_url
      )
      redirect_to @session.url, allow_other_host: true
    end
  
    def success
      # gestion du succès de paiement
      @session = Stripe::Checkout::Session.retrieve(params[:session_id])
      @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    end
  
    def cancel
      # gestion de l'annulation du paiement
    end
  end