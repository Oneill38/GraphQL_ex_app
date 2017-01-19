class Artist < ApplicationRecord
	has_many :songs, through: :album
	has_many :albums
end
