class QuizzesController < ApplicationController

  def results
    petfinder = Petfinder::Client.new  
    @results = petfinder.find_pets('dog', 84111, count: 25)
  end

  def form
    binding.pry
  end
  

  # CUSTOM QUESTIONS ROUTES 

  def question_1
    render :question1
  end

  



  private

  
end
