class User < ActiveRecord::Base
	has_many :articles
	before_save {email.self = email.downcase}
	validates :username, presence: true, 
	uniqueness: {case_sensitive: false}, 
	length:{ minimum:3, maximum:20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true,
			  length:{maximum: 105 },
			  uniqueness:{case_sensitive:false},
			  format: { with: VALID_EMAIL_REGEX }
end
