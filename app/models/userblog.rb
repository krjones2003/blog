# == Schema Information
#
# Table name: userblogs
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Userblog < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title, :user_id
  validates_presence_of :user_id
  has_many :entries 
end
