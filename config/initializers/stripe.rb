if Rails.env.development? || Rails.env.test?
  Stripe.api_key = ENV['STRIPE_PUBLISHABLE_KEY_TEST']
else
	Stripe.api_key = ENV['STRIPE_PUBLISHABLE_KEY_LIVE']
end