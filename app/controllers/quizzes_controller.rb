class QuizzesController < ApplicationController

  def results
    petfinder = Petfinder::Client.new  
    @results = petfinder.find_pets('dog', 84111, count: 25)
  end

  # def index
  #   @quizzes = Quiz.all
  #   render :question1
  # end

  # def show
  #   @quiz = Quiz.find(params[:id])
  # end

  # def edit
  # end

  # def new
  #   @quiz = Quiz.new
  # end

  # def update
  # end

  # def create
  #   @quiz = Quiz.new(quiz_params)

  #   # respond_to do |format|
  #   #   if @quiz.save
  #   #     format.html { redirect_to @quiz, notice: 'Quiz was successfully created.' }
  #   #     format.json { render :show, status: :created, location: @quiz }
  #   #   else
  #   #     format.html { render :new }
  #   #     format.json { render json: @quiz.errors, status: :unprocessable_entity }
  #   #   end
  #   # end
  # end

  # def destroy
  #   # @quiz.destroy
  #   # respond_to do |format|
  #   #   format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
  #   #   format.json { head :no_content }
  #   # end
  # end


  # CUSTOM QUESTIONS ROUTES 

  # def question_1
  #   render :question1
  # end

  # def question_2
  #   # @quiz = current_user.quiz 
  #   # @quiz[:question_1] = params[:answer_1]
  #   render :question2
  # end
  
  # def question_3
  #   render :question3
  # end
  
  # def question_4
  #   render :question4
  # end

  # def question_5
  #   render :question5
  # end

  # def question_6
  #   render :question6
  # end

  # def question_7
  #   render :question7
  # end



  # private

  # def quiz_params
  #   params.require(:quiz).permit()
  # end

  # def quiz
  #   @quiz = Quiz.find(params[:id])
  # end
end
