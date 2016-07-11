class QuizzesController < ApplicationController

  def results
    @options = Quiz.set_options(params) 
    if @options[:size] == 'small'
      if @options[:sex] == 'male'
        @spaniel = Quiz.search("#{params[:zip]}", {count: 5, breed: 'english springer spaniel', sex: 'M'})
        @maltese = Quiz.search("#{params[:zip]}", {count: 5, breed: 'maltese', sex: 'M'})
        @shih_tzu = Quiz.search("#{params[:zip]}", {count: 5, breed: 'shih tzu', sex: 'M'})
      elsif @options[:sex] == 'female'
        @spaniel = Quiz.search("#{params[:zip]}", {count: 5, breed: 'english springer spaniel', sex: 'F'})
        @maltese = Quiz.search("#{params[:zip]}", {count: 5, breed: 'maltese', sex: 'F'})
        @shih_tzu = Quiz.search("#{params[:zip]}", {count: 5, breed: 'shih tzu', sex: 'F'})
      end
    end

    if @options[:size] == 'large'
      if @options[:sex] == 'male'
        if @options[:age] == 'baby'
          @beagle = Quiz.search("#{params[:zip]}", {count: 5, breed: 'beagle', sex: 'M', age: 'baby'})
          @spaniel = Quiz.search("#{params[:zip]}", {count: 5, breed: 'english springer spaniel', sex: 'M', age: 'baby'})
          @maltese = Quiz.search("#{params[:zip]}", {count: 5, breed: 'maltese', sex: 'M', age: 'baby'})
          @shih_tzu = Quiz.search("#{params[:zip]}", {count: 5, breed: 'shih tzu', sex: 'M', age: 'baby'})
          @lab = Quiz.search("#{params[:zip]}", {count: 5, breed: 'labrador retriever', sex: 'M', age: 'baby'})
          @golden = Quiz.search("#{params[:zip]}", {count: 5, breed: 'golden retriever', sex: 'M', age: 'baby'})
          @bloodhounds = Quiz.search("#{params[:zip]}", {count: 5, breed: 'bloodhound', sex: 'M', age: 'baby'})
        elsif @options[:sex] == 'female'
          if @options[:age] == 'baby'
            @beagle = Quiz.search("#{params[:zip]}", {count: 5, breed: 'beagle', sex: 'F', age: 'baby'})
            @spaniel = Quiz.search("#{params[:zip]}", {count: 5, breed: 'english springer spaniel', sex: 'F', age: 'baby'})
            @maltese = Quiz.search("#{params[:zip]}", {count: 5, breed: 'maltese', sex: 'F',  age: 'baby'})
            @shih_tzu = Quiz.search("#{params[:zip]}", {count: 5, breed: 'shih tzu', sex: 'F',  age: 'baby'})
            @lab = Quiz.search("#{params[:zip]}", {count: 5, breed: 'labrador retriever', sex: 'F', age: 'baby'})
            @golden = Quiz.search("#{params[:zip]}", {count: 5, breed: 'golden retriever', sex: 'F',  age: 'baby'})
            @bloodhounds = Quiz.search("#{params[:zip]}", {count: 5, breed: 'bloodhound', sex: 'F',  age: 'baby'})
          end
        end
      end
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


  # def show
  #   @result = Dog.search("84102",{breed: "Labrador Retriever", age: "Young"})
  # end
  
end

