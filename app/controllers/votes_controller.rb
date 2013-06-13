class VotesController < ApplicationController

  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find_by_id(params[:id])
  end

  def new
    @vote = Vote.new
  end

  def create
    if session[:user_id].blank?
      redirect_to '/login'
    else
      @vote = Vote.new
      @vote.vote_for = true
      @vote.user_id = session[:user_id]
      @vote.question_id = params[:qid]
    
      if @vote.save
        if @vote.question.votecount.blank?
          @vote.question.votecount = 1
        else
          @vote.question.votecount = @vote.question.votecount + 1
        end
        @vote.question.save
        redirect_to person_url
      else
        render 'new'
      end
    end
  end

  def edit
    @vote = Vote.find_by_id(params[:id])
  end

  def update
    if session[:user_id].blank?
      redirect_to '/login'
    else
      @vote = Vote.find_by_id(params[:id])
      @vote.vote_for = true
      @vote.user_id = session[:user_id]
      @vote.question_id = params[:question_id]
    
      if @vote.save
        redirect_to people_url
      else
       render 'new'
      end
    end
  end

  def destroy
    @vote = Vote.find_by_id(params[:id])
    @vote.destroy
    redirect_to people_url
  end
end
