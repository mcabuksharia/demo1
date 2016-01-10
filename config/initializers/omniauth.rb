OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['409986529206589'], ENV['a44281362c5bbbf3863c7096e919f532']
end

