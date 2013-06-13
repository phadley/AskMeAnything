# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Rails.env.development?
  Person.destroy_all
  User.destroy_all
  Answer.destroy_all
  Question.destroy_all
  Vote.destroy_all
end

  t = Person.new
  t.name = "Barack Obama"
  t.title = "President of the United States"
  t.imagelink = "http://m.c.lnkd.licdn.com/media/p/2/000/1a3/129/3a73f4c.jpg"
  t.save

  t = Person.new
  t.name = "Sally Blount"
  t.title = "Dean of the Kellogg School of Management"
  t.imagelink = "http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/4/000/145/138/14d3972.jpg"
  t.save

  t = Person.new
  t.name = "Jeff Cohen"
  t.title = "Chief instructor at the Starter League"
  t.imagelink = "http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/2/000/20c/0e0/0ecd6d3.jpg"
  t.save

puts "There are now #{Person.count} People."

  t = User.new
  t.name = "Patrick"
  t.password = "Patrick"
  t.save

  t = User.new
  t.name = "Joe"
  t.password = "Joe"
  t.save

  t = User.new
  t.name = "Sarah"
  t.password = "Sarah"
  t.save

puts "There are now #{User.count} Users."

  t = Question.new
  t.q = "What country are you most worried about attacking the United States"
  t.people_id = 1
  t.user_id = 1
  t.votecount = 2
  t.save

  t = Question.new
  t.q = "Do you read the newspaper articles about yourself?  What do you think of the media?"
  t.people_id = 1
  t.user_id = 2
  t.votecount = 1
  t.save

  t = Question.new
  t.q = "Should Kellogg be ranked number 1 for MBA programs?"
  t.people_id = 2
  t.user_id = 2
  t.votecount = 0
  t.save

  t = Question.new
  t.q = "Why should a perspective student choose Kellogg over other top business schools?"
  t.people_id = 2
  t.user_id = 1
  t.votecount = 2
  t.save

  t = Question.new
  t.q = "What's the status of the new building?"
  t.people_id = 2
  t.user_id = 3
  t.votecount = 1
  t.save

  t = Question.new
  t.q = "How come everyone doesn't learn to use rails?"
  t.people_id = 3
  t.user_id = 3
  t.votecount = 1
  t.save

puts "There are now #{Question.count} Questions."

  t = Answer.new
  t.a = "While we continually keep our eyes on Iran and the middle east, the transition of power in North Korea has made that particular area unstable, and we are keeping a close eye on that region"
  t.people_id = 1
  t.question_id = 1
  t.save

  t = Answer.new
  t.a = "Kellogg offers a unique culture of collaboration, and we are constantly updating our curriculm.  We even recently added a coding class that has gained rave reviews!"
  t.people_id = 1
  t.question_id = 4
  t.save

puts "There are now #{Question.count} Questions."