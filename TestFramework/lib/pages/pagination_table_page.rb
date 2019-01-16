class PaginationTablePage<BasePage

  element(:nextLink){|b|b.link(class:"next_link")}

  element(:tableBody){|b|b.tbody(id:"myTable")}



  def clickOnNextLink
    nextLink.when_present.click
  end


def printSomethingFromTable
  p tableBody[9][0].text
  p "Printing the Vale of Row9 and Col0 : #{tableBody[9][0].text}"

end





















end