# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  location   :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :location
  has_many :userblogs
  has_many :follow
  
end