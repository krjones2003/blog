# Second step 
# When I create an entry with title my entry 

Given /^that I start with the entry page/ do

	#@userblog = Userblog.first 
	#visit userblog_entries_path(@userblog.id)
	'/userblog/1/entries'
	#visit userblog_entries_path()
end 


When  /^I create an entry with title (.*)$/  do |title|
	#  title       :string(255)
	#  content     :text
	#  userblog_id :integer

	@entry = Entry.new(:title => title, :content => "my content", :userblog_id => "1" ) 
	@entry.save

end	


Then /^I should see index page/  do 

	'/userblog/1/entries' 
end



# And should show my entry     
Then /^should show (.*)$/ do |string|

	#page.body.should have_content(string)
	@entry.title.should have_content(string)

end