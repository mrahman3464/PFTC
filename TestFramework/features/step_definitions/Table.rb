When(/^User click on Table drop down$/) do
  on(SeleniumEsayHomePage).clickOntabledropDown
end

Then(/^User click on the table Pagination link$/) do
  on(SeleniumEsayHomePage).clickOnpaginationLink
end

Then(/^User Goes to the second table$/) do
on(PaginationTablePage).clickOnNextLink
end

Then(/^User Prints the Text form the table header$/) do
  on(PaginationTablePage).printSomethingFromTable
end