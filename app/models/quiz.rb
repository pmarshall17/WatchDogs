class Quiz < ActiveRecord::Base  

  def self.search(zip, options = {})
    petfinder = Petfinder::Client.new
    petfinder.find_pets("dog", zip, options)
  end

  # PARSE PARAMS INTO USEABLE VARIABLES
  def self.set_options(params)
    options = {size: '', sex: '', age: '', count: 50 }
    if params[:apartment] == 'on' || 'apt'
      options[:size] = 'S'
    elsif params[:house] == 'on' || 'house'
      options[:size] = 'L'
    end

    if params[:outside] == 'on' || 'outside'
      params[:energy] = 'high'
    elsif params[:inside] == 'on' || 'inside'
      params[:energy] = 'low'
    end

    if params[:male] == 'on' || 'male'
      options[:sex] = 'M'
    elsif params[:female] == 'on' || 'female'
      options[:sex] = 'F'
    end

    if params[:puppy] == 'on' || 'baby'
      options[:age] = 'baby'
    elsif params[:young] == 'on' || 'young'
      options[:age] = 'young'
    elsif params[:adult] = 'on' || 'adult'
      options[:age] = 'adult'
    elsif params[:senior] == 'on' || 'senior'
      options[:age] = 'senior'
    end
   return options
  end
end