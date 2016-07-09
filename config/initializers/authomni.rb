begin
  omniauth = "#{Rails.root}/config/omniauth.yml"
  YAML.load_file(omniauth).each do |key, value|
    ENV[key] = value
  end
rescue
  raise "no omniauth.yml config file in your config directory."
end
