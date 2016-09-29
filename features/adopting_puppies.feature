Feature: Adopting puppies

	As a puppy lover
	I want to adopt puppies
	So they can chew my furniture
	
Background:
	Given I am on the puppy adoption site

Scenario Outline: Adopting two puppies
	When I click the first View Details button
	And I click the Adopt Me button
	Then I should see "Brook" as the name for line item 1
	And I should see "$34.95" as the subtotal for line item 1
	And I should see "Hanna" as the name for line item 2
	And I should see "$22.99" as the subtotal for line item 2
	And I should see "$57.94" as the cart total
	And I click the Complete the Adoption button
	And I enter "<name>" in the name field
	And I enter "<address>" in the address field
	And I enter "<email>" in the email field
	And I select "<pay_type>" from the pay with dropdown
	And I click the Place Order button
	Then I should see "Thank you for adopting a puppy!"

Examples:
	|name|address|email|pay_type|
	|Tony|1 Main St|test@test.com|Credit card|
	|Tim|2121 Rosecrans|jsmith@test.com|Check|
	|Joe|124 Spraguetown|test@aol.com|Purchase order|