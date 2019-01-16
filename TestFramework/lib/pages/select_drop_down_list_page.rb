class SelectDropDownListPage<BasePage


  element(:selectADay){|b|b.select(id:"select-demo")}
  element(:multiselect){|b|b.select(id:"multi-select")}
  element(:getAllBtn){|b|b.button(id:"printAll")}






def selectaDayFromDropDown
  selectADay.when_present.select('Sunday')
end


  def selectState
    multiselect.when_present.select('New York')
  end


def clickOnGetAllButton
  getAllBtn.when_present.click
end









end