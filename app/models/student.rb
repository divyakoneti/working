
class Student < ActiveRecord::Base
	belongs_to :classroom

  validates :name, presence:{message: "please enter name"}
  validates :name, format:{with:/\A[a-zA-Z]+\Z/, message: "enter alphabets only"}
  validates :marks ,numericality:{message: "enter numbers only"}
  validates :year, presence:{message: "please select	 year"}
  validates :course, presence:{message: "please enter course"}
end

