class QuizsController < ApplicationController
  before_action :quiz, only: [:show, :edit]
  def index
    @quizzes = Quiz.all
  end

  def show
  end

  def edit
  end

  def new
    @quiz = Quiz.new
  end

  def update
  end

  def create
    @quiz = Quiz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def quiz_params

  end
end
