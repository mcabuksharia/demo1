class District < ActiveRecord::Base
	belongs_to :states, class_name: "State", foreign_key: "state_id"
end
