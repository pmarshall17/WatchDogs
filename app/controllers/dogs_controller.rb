class DogsController < ApplicationController


  def index
    @dogs = Dog.all
  end

  def home
  end

  def show

  end

  def edit
  end

  def new
  end
end
