Feature: blog entry views
	Scenario:
		Given I am on the entry page 
		When I create an entry with title my entry
		Then I should be on the index page
		And should show my entry  
