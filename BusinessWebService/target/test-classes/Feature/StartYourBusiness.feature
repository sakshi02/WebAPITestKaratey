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

Feature: Check the countries returned by API
				Background:
							* url 'https://restcountries.eu'
							* header Accept = 'application/json' 
						
				Scenario: get list of all countries
						Given path '/rest/v2/all'
						When method get
						Then status 200
		
						
						And def language = response
						Then match language.name contains Afghanistan
						
#			And def userResponse = response[*]
#			Then response[*].first contains ["Afghanistan"]
						
						

			
						

  