# When I create an entry with title my entry 
When  /^I create an entry with title (.*)$/  do |title|
	#  title       :string(255)
	#  content     :text
	#  userblog_id :integer

	@entry = Entry.new(:title => title, :content => "my content", :userblog_id => "1" ) 
	@entry.save

end	

# And should show my entry     
Then /^should show (.*)$/ do |string|

	#page.body.should have_content(string)
	@entry.title.should have_content(string)

end