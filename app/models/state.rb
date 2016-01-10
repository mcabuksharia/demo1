class State < ActiveRecord::Base
	belongs_to :country, class_name: "Country", foreign_key: "country_id"
	has_many :district
end
