class Project < ActiveRecord::Base

  belongs_to :user
  has_many :bugs
  attr_accessible :description, :name

  validates_presence_of :name, :description
  validates_uniqueness_of :name
end
