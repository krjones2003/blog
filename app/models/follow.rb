class Follow < ActiveRecord::Base
  attr_accessible :followed_id, :follower_id

  belongs_to :follower, :class_name => "User", :foreign_key => 'follower_id'

  belongs_to :followed, :class_name => "User", :foreign_key => 'followed_id'
end
