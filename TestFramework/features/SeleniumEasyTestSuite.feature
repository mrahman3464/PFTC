Feature: As a user I should be able to test the Selenium Easy Applications Functionality

@smoketest
  @Regression
  @foo
  Scenario: Sum Functionality
    Given User Naviagete the Selenium Easy Home Page
    When User Click on the Input Form Drop Down Menu
    Then User Select Simple Form Demo
    And User Fill Up all the Information
    And User Click on Get Total Button

  @Regression
    Scenario: Select Drop Down
      Given User Naviagete the Selenium Easy Home Page
      When User Click on the Input Form Drop Down Menu
      Then User Click On Select Drop Down List
      Then User Select A day from the Drop Down
      Then User Select a state from Multi Select List Demo
      And User Click On Get All Selected


  Scenario: Input Form Submit with Yes Option
    Given User Naviagete the Selenium Easy Home Page
    When User Click on the Input Form Drop Down Menu
    Then User Click On Input Form Submit
    Then User Fill Out All the Information
    And User Click On Send


  Scenario: Input Form Submit with No Option
    Given User Naviagete the Selenium Easy Home Page
    When User Click on the Input Form Drop Down Menu
    Then User Click On Input Form Submit
    Then User Fill Out All the Information No Option
    And User Click On Send


  Scenario: AJX Form Submit
    Given User Naviagete the Selenium Easy Home Page
    When User Click on the Input Form Drop Down Menu
    Then User Click On AJX Form Submit
    Then User Fill Up the AJX Form
    And Click On Submit Button
    Then User Capture the Successfull Message



