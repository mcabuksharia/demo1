class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :articles, dependent: :destroy
end
