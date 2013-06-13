class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by_id(params[:qid])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.q = params[:q]
    @question.people_id = params[:pid]
    @question.user_id = session["user_id"]
    @question.votecount = 0
    
    if @question.save
      redirect_to person_url
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find_by_id(params[:qid])
  end

  def update
    @question = Question.find_by_id(params[:qid])
    @question.q = params[:q]
    @question.people_id = params[:pid]
    @question.user_id = session["user_id"]
    @question.votecount = params[:votecount]
    
    if @question.save
      redirect_to people_url
    else
      render 'new'
    end
  end

  def destroy
    @question = Question.find_by_id(params[:qid])
    @question.destroy
    redirect_to questions_url
  end
end
