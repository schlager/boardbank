class User < ActiveRecord::Base
  
  include Elasticsearch::Model
  searchkick
  

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  attr_accessible :firstname, :lastname, :address, :city, :state, :zipcode, :phonenumber, :education, :areaofstudy, :previous_experience, :email, :password, :password_confirmation, :remember_me, :fundraise, :financial_contribution, :availability, :additional_comments, :user_skills_attributes

  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :user_interest
  has_many :interests, through: :user_interest

  accepts_nested_attributes_for :user_skills
  
  #Searchkick
  #User.reindex
  
  #Testing searchkick to see if it works
  #products = User.search "Bob"
  #products.each do |product|
  #  puts product.name
  #end
  
end
