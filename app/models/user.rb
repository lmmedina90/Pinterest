class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	max_paginates_per 100

	has_many :boards

	has_many :pins

	def full_name
		"#{first_name} #{last_name}"
	end

end
