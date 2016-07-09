if Rails.env.development?
  yelp = "#{Rails.root}/config/yelp.yml"
  if File.exists? yelp
    config = YAML.load_file(yelp)
    config.each { |key, value| ENV[key] = value }
  else
    raise "cp config/yelp.yml.example"
  end
end

Yelp.client.configure do |config|
  config.consumer_key = ENV["YELP_CONSUMER_KEY"]
  config.consumer_secret = ENV["YELP_CONSUMER_SECRET"]
  config.token = ENV["YELP_token"]
  config.token_secret = ENV["YELP_token_secret"]
end
# Yelp.client.configure do |config|
#   config.consumer_key = ENV["YELP_CONSUMER_KEY"]
#   config.consumer_secret = ENV["YELP_CONSUMER_SECRET"]
#   config.token = ENV["YELP_token"]
#   config.token_secret = ENV["YELP_token_secret"]
# end

# YELP_CONSUMER_KEY: 'UnePeyWwhMyEn4wt0adXPg'
# YELP_CONSUMER_SECRET: '2C7OOJlWY0vmgmmaqEWbvnDoJZY'
# YELP_token: 'ZWdTxhdnYi8b7uOM0UhM7JT8v24KG9BC'
# YELP_token_secret: '23JGCFfLWZ1xh5Tvp8VTO54UtjM'
