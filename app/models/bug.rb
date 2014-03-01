class Bug < ActiveRecord::Base
  belongs_to :project
  belongs_to :creator, :class_name => 'User' , :foreign_key => :creator_id
  belongs_to :developer, :class_name => 'User'  , :foreign_key => :developer_id
  attr_accessible :deadline, :description, :status, :title, :type
  validates_presence_of :tile,:status ,:deadline, :description, :type
  validates_uniqueness_of :title

end
