# encoding: utf-8

Feature: User wants to find game by specific names

  Scenario: Advanced Search
    Given I have some games added
    Given I am on the Advanced Search page
    When I fill the field "Desenvolvedora" with "Nintendo"
    And the field "Nome" with "The Legend of Zelda"
    And I press "Search" 
    Then I should see a list of games named "The Legend of Zelda"

