Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :loctouch, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end
