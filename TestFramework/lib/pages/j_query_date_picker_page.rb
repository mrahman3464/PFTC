class JQueryDatePickerPage<BasePage

  element(:fromField){|b|b.text_field(id:"from")}
  element(:toField){|b|b.text_field(id:"to")}
  element(:monthDropDown){|b|b.select(class:"ui-datepicker-month")}
  element(:tableBody){|b|b.tbody(xpath:"//*[@id='ui-datepicker-div']/table/tbody")}




def pickFormDate
  #fromField.when_present.set("05/20/2018")
  fromField.when_present.click
  monthDropDown.when_present.select("Jan")
  tableBody[3][2].click
end
























end