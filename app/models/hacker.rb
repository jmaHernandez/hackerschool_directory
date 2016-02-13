class Hacker < ActiveRecord::Base
	belongs_to :generation

	has_many :languages, through: :hacker_languages
	has_many :hackers_languages

	validates :email, presence: { message: "no puede estar en blanco :(" }
	validates :email, uniqueness: true
end
