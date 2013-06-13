class Question < ActiveRecord::Base

belongs_to :people
has_many :answers
belongs_to :user
has_many :votes

end
