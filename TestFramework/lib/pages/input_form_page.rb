class InputFormPage<BasePage

  element(:fname){|b|b.text_field(name:"first_name")}
  element(:lname){|b|b.text_field(name:"last_name")}
  element(:emailAddress){|b|b.text_field(name:"email")}
  element(:phoneNum){|b|b.text_field(name:"phone")}
  element(:addressField){|b|b.text_field(name:"address")}
  element(:cityName){|b|b.text_field(name:"city")}
  element(:stateName){|b|b.select(name:"state")}
  element(:zipCode){|b|b.text_field(name:"zip")}
  element(:websiteAddress){|b|b.text_field(name:"website")}
  element(:yesRadio){|b|b.radio(value:"yes")}
  element(:noRadio){|b|b.radio(value:"no")}
  element(:pdescription){|b|b.textarea(name:"comment")}
  element(:sendbtn){|b|b.button(text:"Send")}




  def fillUpAllInfoWithyes
    sleep 3
    fname.when_present.set('Abu')
    lname.when_present.set('Abdul')
    emailAddress.when_present.set('Abu.abdul@gmail.com')
    phoneNum.when_present.set('2025054444')
    addressField.when_present.set('3000 Columbia Pike')
    cityName.when_present.set('Arlington')
    stateName.when_present.select('Virginia')
    zipCode.when_present.set('22204')
    websiteAddress.when_present.set('www.abu.abdul.com')
    yesRadio.when_present.click
    pdescription.when_present.set('sadasdasfasduashidasijdhasdijagsdau')
    sleep 5
  end


  def fillUpAllInfoWithNo
    fname.when_present.set('Abu')
    lname.when_present.set('Abdul')
    emailAddress.when_present.set('Abu.abdul@gmail.com')
    phoneNum.when_present.set('2025054444')
    addressField.when_present.set('3000 Columbia Pike')
    cityName.when_present.set('Arlington')
    stateName.when_present.select('Virginia')
    zipCode.when_present.set('22204')
    websiteAddress.when_present.set('www.abu.abdul.com')
    noRadio.when_present.click
    pdescription.when_present.set('sadasdasfasduashidasijdhasdijagsdau')
  end




def clickOnSendButton
  sendbtn.when_present.click
end







end