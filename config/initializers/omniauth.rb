Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.secrets.omniauth_provider_key_t, Rails.application.secrets.omniauth_provider_secret_t
  provider :google_oauth2, Rails.application.secrets.omniauth_provider_key_g, Rails.application.secrets.omniauth_provider_secret_g
  provider :facebook, Rails.application.secrets.omniauth_provider_key_f, Rails.application.secrets.omniauth_provider_secret_f
  provider :tumblr, Rails.application.secrets.omniauth_provider_key_tumblr, Rails.application.secrets.omniauth_provider_secret_tumblr

end
