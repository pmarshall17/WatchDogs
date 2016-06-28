class CompilationsController < ApplicationController
  before_action :compilation, only: [:show, :edit] 

  def index
  	@compilations = Compilation.all
  end

  def show

  end

  def edit
  end

  def new
  end


  private

  def compilation
  	@compilation = Compilation.find(params[:id])
  end

end
