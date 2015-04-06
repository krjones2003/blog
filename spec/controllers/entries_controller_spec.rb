require 'spec_helper'

#issolate testing the controller, assuming model may not exits or be buggy
#this is the code so far
#def create
    #@entry = Entry.new(params[:entry])
	#@entry.save
    #redirect_to entries_path, notice: 'Entry was successfully created.' 
#end

describe EntriesController do 
	describe 'create an entry' do
		it 'creates an entry by calling the model method new' do
			
			entry = mock_model(Entry).as_null_object

			Entry.should_receive(:new).with("title" => 'my title').and_return(entry)
			
			post  'create', :entry => {:title => 'my title'}
		end

		# we are testing that save is called 
		it 'saves the entry' do
			entry = mock_model(Entry)
			Entry.stub(:new).and_return(entry)

			entry.should_receive(:save)

			post 'create'

		end	
	end
end
