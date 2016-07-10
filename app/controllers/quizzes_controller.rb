class QuizzesController < ApplicationController

  def results
    @options = Quiz.set_options(params) 
    if @options[:size] == 'small'
      @spaniel = Dog.search("#{params[:zip]}", {count: 5, breed: 'english springer spaniel'})
      @maltese = Dog.search("#{params[:zip]}", {count: 5, breed: 'maltese'})
      @shih_tzu = Dog.search("#{params[:zip]}", {count: 5, breed: 'shih tzu'})
    end


    if @options[:size] == 'large'
      @beagle = Dog.search("#{params[:zip]}", {count: 5, breed: 'beagle'})
      @spaniel = Dog.search("#{params[:zip]}", {count: 5, breed: 'english springer spaniel'})
      @maltese = Dog.search("#{params[:zip]}", {count: 5, breed: 'maltese'})
      @shih_tzu = Dog.search("#{params[:zip]}", {count: 5, breed: 'shih_tzu'})
      @lab = Dog.search("#{params[:zip]}", {count: 5, breed: 'labrador retriever'})
      @golden = Dog.search("#{params[:zip]}", {count: 5, breed: 'golden retriever'})
      @bloodhounds = Dog.search("#{params[:zip]}", {count: 5, breed: 'bloodhound'})
    end
    
    





  end

  def form
    @params = params
    redirect_to results_path(params: @params)
  end  

  # CUSTOM QUESTIONS ROUTES 

  def question_1

  end

  
  private

  
end


# def show
#       @result = Dog.search("84102",{breed: "Labrador Retriever"})
#     binding.pry