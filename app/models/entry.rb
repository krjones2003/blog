# == Schema Information
#
# Table name: entries
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  content     :text
#  userblog_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Entry < ActiveRecord::Base
  belongs_to :userblog
  attr_accessible :content, :title, :userblog_id, :userblog
  
  validates :title, :presence => true 

  validates :title, :uniqueness => { :scope => :userblog_id }  
end
