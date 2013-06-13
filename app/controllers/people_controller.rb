class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find_by_id(params[:pid])
    @questions = @person.questions.order('votecount desc')
    #@questions = Question.order("votecount DESC").all
    @vote = Vote.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new
    @person.name = params[:name]
    @person.title = params[:title]
    @person.imagelink = params[:imagelink]
    
    if @person.save
      redirect_to people_url
    else
      render 'new'
    end
  end

  def edit
    @person = Person.find_by_id(params[:pid])
  end

  def update
    @person = Person.find_by_id(params[:pid])
    @person.name = params[:name]
    @person.title = params[:title]
    @person.imagelink = params[:imagelink]
    
    if @person.save
      redirect_to people_url
    else
      render 'new'
    end
  end

  def destroy
    @person = Person.find_by_id(params[:pid])
    @person.destroy
    redirect_to people_url
  end
end
