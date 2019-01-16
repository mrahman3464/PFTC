Given(/^User Naviagete the Selenium Easy Home Page$/) do
  visit SeleniumEsayHomePage
end

When(/^User Click on the Input Form Drop Down Menu$/) do
  on(SeleniumEsayHomePage).clickOninputFromDropDown
end

Then(/^User Select Simple Form Demo$/) do
  on(SeleniumEsayHomePage).clickOnsimpleFormDemo
end

And(/^User Fill Up all the Information$/) do
on(SimpleFormPage).fillUpAlltheInfo
end

And(/^User Click on Get Total Button$/) do
  on(SimpleFormPage).clickOngetTotal

end

Then(/^User Click On Select Drop Down List$/) do
  on(SeleniumEsayHomePage).clickOnSelectDropDown
end

Then(/^User Select A day from the Drop Down$/) do
  on(SelectDropDownListPage).selectaDayFromDropDown
end

Then(/^User Select a state from Multi Select List Demo$/) do
  on(SelectDropDownListPage).selectState
end

And(/^User Click On Get All Selected$/) do
  on(SelectDropDownListPage).clickOnGetAllButton
end

Then(/^User Click On Input Form Submit$/) do
 on(SeleniumEsayHomePage).clickOnInputForm
end

Then(/^User Fill Out All the Information$/) do
 on(InputFormPage).fillUpAllInfoWithyes
end

And(/^User Click On Send$/) do
  on(InputFormPage).clickOnSendButton
end

Then(/^User Fill Out All the Information No Option$/) do
  on(InputFormPage).fillUpAllInfoWithNo
end

Then(/^User Click On AJX Form Submit$/) do
on(SeleniumEsayHomePage).clickOnAJXForm
end

Then(/^User Fill Up the AJX Form$/) do
on(AJXFromPage).fillUpAJXForm
end

And(/^Click On Submit Button$/) do
  on(AJXFromPage).clickOnSubmitBtn
end

Then(/^User Capture the Successfull Message$/) do
  on(AJXFromPage).printAndVerifySuccessMSG
end