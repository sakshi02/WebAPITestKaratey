#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

Feature: check returned by the API
  
					 Background:
								* url 'https://gorest.co.in'
								* header Authorization =  'Bearer Z8Pa_wA5ribojXeCDjIANdDOaQ2e4ZAmnBzz'
								* def
								
								
					Scenario: List all the users having name with Elenora
							 Given path '/public-api/users'
							 And param first_name = 'Elenora'
							 When method get
							 Then status 200
							
			