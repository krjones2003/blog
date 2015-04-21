Feature: blog entry views
	Scenario:
		Given that I start with the entry page 
		When I create an entry with title 'my entry'
		Then I should see index page
		Then should show 'my entry'  
