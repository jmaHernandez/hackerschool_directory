class Generation < ActiveRecord::Base
  has_many :courses
  has_many :hackers

  validates :name, presence: { message: "no puede estar en blanco :(" }
  validates :start_date, presence: {message: "no puede estar en blanco :(" } 
end
