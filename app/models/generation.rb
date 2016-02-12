class Generation < ActiveRecord::Base
  has_many :hackers

  validates :name, presence: {message: "no puede estar en blanco :(" } 
end
