class User < ActiveRecord::Base

  has_many :projects
  has_many :created_bugs,:class_name =>  "Bug"
  has_many :developed_bugs, :class_name => "Bug"
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  attr_accessible :username, :email, :password, :password_confirmation  ,:user_type

  validates_confirmation_of :password
  validates_presence_of :password , :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :username
  validates_presence_of :user_type
  validates_presence_of :password_confirmation

end
