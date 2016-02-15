class Article < ActiveRecord::Base
	belongs_to :user
    validates :title, presence: true, length: { minimum: 3, maximium:20 }
    validates :description, presence: true, length: { minimum: 10, maximium:50 }
    validates :user_id, presence: true
end
