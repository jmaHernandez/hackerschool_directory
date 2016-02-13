class Language < ActiveRecord::Base
	has_many :hackers, through: :hacker_languages
	has_many :hacker_languages

	validates :name, presence: { message: "no puede estar en blanco :(" } 
end
