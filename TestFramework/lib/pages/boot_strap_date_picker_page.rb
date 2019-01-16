class BootStrapDatePickerPage<BasePage

  element(:selectDate){|b|b.text_field(xpath:'//*[@id="sandbox-container1"]/div/input')}
  element(:startDate){|b|b.text_field(xpath:'//*[@id="datepicker"]/input[1]')}
  element(:stopDate){|b|b.text_field(xpath:'//*[@id="datepicker"]/input[2]')}
  element(:calenderOption){|b|b.span(class:"input-group-addon",index:0)}
  element(:previousMonth){|b|b.th(xpath:"/html/body/div[3]/div[1]/table/thead/tr[2]/th[1]")}
  element(:dob){|b|b.td(xpath:"/html/body/div[3]/div[1]/table/tbody/tr[3]/td[1]")}

  element(:today){|b|b.th(text:"Today")}




def selectADate
  selectDate.when_present.set("05/28/2018")
  startDate.when_present.set("05/28/2018")
  stopDate.when_present.set("06/28/2018")
end


def clickOncalenderOption
  calenderOption.when_present.click
  sleep 5
end


  def clickonPreviousMonthOption
   #  previousMonth.when_present.click
   #  previousMonth.when_present.click
   #  previousMonth.when_present.click
   # # dob.when_present.click
   # @browser.tbody(xpath:"/html/body/div[3]/div[1]/table/tbody")[3][2].click

    today.when_present.click

    sleep 10
  end
















end