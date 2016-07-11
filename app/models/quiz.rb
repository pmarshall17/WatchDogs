class Quiz < ActiveRecord::Base  

  def self.search(zip, options = {})
    petfinder = Petfinder::Client.new
      petfinder.find_pets("dog", zip, options)
  end

  # PARSE PARAMS INTO USEABLE VARIABLES
  def self.set_options(params)
    options = {size: '', sex: '', age: ''}
    if params[:apartment] == 'on'
      options[:size] = 'small'
    elsif params[:house] == 'on'
      options[:size] = 'large'
    end

    # if params[:outside] == 'on'
    #   options[:options] += ', energy: "high"'
    # elsif params[:inside] == 'on'
    #   options[:options] += ', energy: "low"'
    # end

    if params[:male] == 'on'
      options[:sex] = 'male'
    elsif params[:female] == 'on'
      options[:sex] = 'female'
    end

    if params[:puppy] == 'on'
      options[:age] = 'baby'
    elsif params[:young] == 'on'
      options[:age] = 'young'
    elsif params[:adult] = 'on'
      options[:age] = 'adult'
    elsif params[:senior] == 'on'
      options[:age] = 'senior'
    end
   return options
  end
end