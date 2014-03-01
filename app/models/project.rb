class Project < ActiveRecord::Base

  belongs_to :user
  has_many :bugs
  attr_accessible :descripton, :name

  validates_presence_of :name, :descripton
  validates_uniqueness_of :name
end
