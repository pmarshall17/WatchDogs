class Quiz < ActiveRecord::Base  

  def self.search(zip, options = {})
    petfinder = Petfinder::Client.new
      petfinder.find_pets("dog", zip, options)
  end

  # PARSE PARAMS INTO USEABLE VARIABLES
  def self.set_options(params)
    options = {size: '', options: ''}
    if params[:apartment] == 'on'
      options[:size] = 'small'
    elsif params[:house] == 'on'
      options[:size] = 'large'
    end

    # if params[:outside] == 'on'
    #   options[:options] += ', engery: "high"'
    # elsif params[:inside] == 'on'
    #   options[:options] += ', engery: "low"'
    # end

    if params[:male] =='on'
      options[:options] << ', sex: "M"'
    elsif params[:female] == 'on'
      options[:options] << ', sex: "F"'
    end
   return options
  end
end