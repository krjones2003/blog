require 'spec_helper'

describe EntriesController do 
	describe 'create an entry' do
		
		
		it 'creates an entry and redirects' do
	
			old_count = Entry.count	
			post :create, :entry => {"title" => 'my title'}, :userblog_id => "1"
			assert_equal old_count + 1, Entry.count 
			assert_redirected_to userblog_entries_path(:userblog_id => "1")
			

			#assert_redirected_to userblog_entries_path(:id => assigns(:post), :userblog_id => "1")
			

		
		end

	end
end
