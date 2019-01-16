Then(/^User clicks on Date Picker$/) do
  on(SeleniumEsayHomePage).clickonDatePicker
end

And(/^User Select Bootstrap Date Picker$/) do
  on(SeleniumEsayHomePage).clickOnbootStrap

end

Then(/^User select date$/) do
 on(BootStrapDatePickerPage).selectADate
end

Then(/^User select date from Calenders$/) do
  on(BootStrapDatePickerPage).clickOncalenderOption
  on(BootStrapDatePickerPage).clickonPreviousMonthOption
end

And(/^User Select JQuery Date Picker$/) do
  on(SeleniumEsayHomePage).clickOnjQueryDatePicker

end

Then(/^User select date Date Range Picker$/) do
on(JQueryDatePickerPage).pickFormDate
  sleep 5
end