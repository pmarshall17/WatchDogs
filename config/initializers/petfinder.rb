if Rails.env.development?
  petfinder = "#{Rails.root}/config/petfinder.yml"
  if File.exists? petfinder
    config = YAML.load_file(petfinder)
    config.each { |key, value| ENV[key] || ENV[key] = value.to_s}
  else
    raise "Developer person, you need to put in your keys to the petfinder.yml file. See petfinder.yml.example to see where to get your APIs."
  end
end

Petfinder.configure do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
