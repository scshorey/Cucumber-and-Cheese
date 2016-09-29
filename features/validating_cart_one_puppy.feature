Feature: Adopting puppies

	As a puppy lover
	I want to adopt puppies
	So they can chew my furniture
	
Background:
	Given I am on the puppy adoption site

Scenario: Validate cart with one puppy
	When I click the first View Details button
	And I click the Adopt Me button
	Then I should see "Brook" as the name for line item 1
	And I should see "$34.95" as the subtotal for line item 1
	And I should see "$34.95" as the cart total