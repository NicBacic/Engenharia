# encoding: utf-8

Feature: User logins and interact with wishlist

  Scenario: Login
    Given I am new user
    When I go to Login page "Login"
    And I fill "username_field" with "User Test" and "password_field" with "123456"
    And I click button "submit_login"
    Then I should go to "home" page


    Scenario: Add Game
    Given I am already signed
    And I have a Wishlist
    When I go to Jogo page "The Legend of Zelda"
    And I should see and click button "Add to List"
    And I should see my personal page
    And I click the link "wishlist_link"
    Then my personal Wishlist should have content "The Legend of Zelda"
