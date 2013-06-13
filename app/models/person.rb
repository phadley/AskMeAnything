class Person < ActiveRecord::Base

attr_accessible :name, :title, :image

has_many :answers, foreign_key: :people_id
has_many :questions, foreign_key: :people_id

mount_uploader :image, ImageUploader

end
