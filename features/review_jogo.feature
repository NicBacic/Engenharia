# encoding: utf-8

Feature: User can review game

  Scenario: Review Jogo
    Given I am signed as user "User Test"
    When I go to Jogo page "Test Game"
    And I fill "review_text_area" with "This is a review!"
    And I confirm my review in "Submit Review"
    Then the game page should have content "This is a review!" written by "User Test"

