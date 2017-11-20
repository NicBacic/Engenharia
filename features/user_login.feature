# encoding: utf-8

Feature: User logins

  Scenario: Login
    Given I am new user
    When I go to Login page "Login"
    And I fill "username_field" with "User Test" and "password_field" with "123456"
    And I click button "submit_login"
    Then I should go to "home" page

