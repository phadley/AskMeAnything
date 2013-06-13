class AnswersController < ApplicationController

  def index
    @person = Person.find_by_id(params[:pid])
    @questions = @person.questions.order('id desc')
    #@questions = Question.order("votecount DESC").all
    @answers = @person.answers.order('id desc')
  end

  def show
    @answer = Answer.find_by_id(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new
    @answer.a = params[:a]
    @answer.people_id = params[:pid]
    @answer.question_id = params[:question_id]
    
    if @answer.save
      redirect_to answers_url
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find_by_id(params[:id])
  end

  def update
    @answer = Answer.find_by_id(params[:id])
    @answer.a = params[:a]
    @answer.people_id = params[:pid]
    @answer.question_id = params[:question_id]
    
    if @answer.save
      redirect_to answers_url
    else
      render 'new'
    end
  end

  def destroy
    @answer = Answer.find_by_id(params[:id])
    @answer.destroy
    redirect_to answers_url
  end
end
