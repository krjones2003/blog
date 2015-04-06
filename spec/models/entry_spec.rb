require 'spec_helper'

#testing the model
#drives the behavior of the model
describe Entry do 
	
		it 'can create an entry' do

			# This will give an error if the model has not been created
			# We are saying the Model Entry should receive a method call new with
			# some text

			# this will be on the test DB 
			entry = Entry.create!(:title => "Rspec tutorial")

            entry.title.should == "Rspec tutorial"

			#User.should_receive(:new).with({"name" =>"my name", "email"=>"my email","location"=>"my location"})
			
			#post :create, @my_user
		
		end 
			
		it 'can associate an entry with a blog' do

			myblog = Userblog.create!(:title => "All about Rails", :user_id =>"1" )

			myentry = Entry.create!(:title => "Rails Associations")

			myentry.userblog = myblog

			myentry.save

			# This is the test 
			myentry.userblog.title.should == myblog.title 

			#Could also write 
			#myentry.userblog.title.should be myblog.title 
		
			# Another test for this spec
			myentry.userblog.id.should == myblog.id

		end

		it 'an entry must have a title' do

			myblog = Userblog.all[0]
			
			# this is like entering a userblog_id, msking s refence to myblog 
		     myentry = Entry.create(:userblog => myblog)

			#this is the test
			myentry.should_not be_valid

		end	

		it 'the entry title must be unique relative to its blog' do 

			myblog = Userblog.all[0]
			
			entry = Entry.create(:userblog => myblog, :title => 'Rails Associations', :content => 'bbbb')

			# we should not allow this to be valid, we already have an entry with this title for blog[0]
			otherentry = Entry.create(:userblog => myblog, :title => 'Rails Associations', :content => 'aaaa')

			otherentry.should_not be_valid

		end
end
