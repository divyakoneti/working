class Classroom < ActiveRecord::Base
	has_many :students

	validates :name , presence: true
	
	validates :no_of_students , numericality: {:message=>"enter numbers only"}
	validates :description , presence: {:message=>"enter something"}
end
