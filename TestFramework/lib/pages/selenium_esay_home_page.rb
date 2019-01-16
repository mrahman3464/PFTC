class SeleniumEsayHomePage<BasePage

  page_url "http://www.seleniumeasy.com/test/"
 # page_url "http://www.seleniumeasy.com/test/dev"
  #page_url "http://www.seleniumeasy.com/test/qa-int"

  element(:inputFromDropDown){|b|b.link(text:"Input Forms")}
  element(:selectDropDown){|b|b.link(text:"Select Dropdown List")}
  element(:inputForm){|b|b.link(text:"Input Form Submit")}
  element(:ajxForm){|b|b.link(text:"Ajax Form Submit")}
  element(:simpleFormDemo){|b|b.link(xpath:"//*[@id='navbar-brand-centered']/ul[1]/li[1]/ul/li[1]/a")}
  element(:datePicker){|b|b.link(text:"Date pickers")}
  element(:bootStrapLink){|b|b.link(href:"./bootstrap-date-picker-demo.html")}
  element(:jQueryDatePicker){|b|b.link(href:"./jquery-date-picker-demo.html")}
  element(:tabledropDown){|b|b.link(text:"Table")}
  element(:paginationLink){|b|b.link(href:"./table-pagination-demo.html")}



  def clickOninputFromDropDown
    # @browser.link(text:"Input Forms").click
    sleep 5
    inputFromDropDown.click
  end


def clickOnsimpleFormDemo
  sleep 5
  simpleFormDemo.click
end


def clickOnSelectDropDown
  selectDropDown.when_present.click
end


def clickOnInputForm
  inputForm.when_present.click
end


def clickOnAJXForm
  ajxForm.when_present.click
end


  def clickonDatePicker
    objWait(datePicker)
    datePicker.when_present.click
  end


def clickOnbootStrap
  bootStrapLink.when_present.click
end


def clickOnjQueryDatePicker
  jQueryDatePicker.when_present.click
end

def clickOntabledropDown
  tabledropDown.when_present.click
end


  def clickOnpaginationLink
    paginationLink.when_present.click
  end








end