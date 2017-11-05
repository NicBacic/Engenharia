# encoding: utf-8

Feature: User can search game

  Scenario: Search Jogo
    Given I am on the Jogos page
    When I fill field "Search" with "The Legend of Zelda" and press "Search" 
    Then I should see "The Legend of Zelda"

