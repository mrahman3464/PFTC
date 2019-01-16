class SimpleFormPage<BasePage


  element(:enterMassage){|b|b.text_field(id:"user-message")}
  element(:showMessage){|b|b.button(text:"Show Message")}
  element(:enter_a){|b|b.text_field(id:"sum1")}
  element(:enter_b){|b|b.text_field(id:"sum2")}
  element(:getTotal){|b|b.button(text:"Get Total5")}


def fillUpAlltheInfo
  sleep 5
  enterMassage.set random_email
  showMessage.click
  sleep 5
  enter_a.set("5")
  enter_b.set("10")

end



  def clickOngetTotal
    sleep 5
    getTotal.click
  end






















end