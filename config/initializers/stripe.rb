Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_API_KEY'],
    :secret_key      => ENV['STRIPE_API_SECRET']
  }
  Stripe.api_key = Rails.configuration.stripe[:secret_key]
  Stripe.api_key = Rails.application.credentials[:stripe][:secret_key]