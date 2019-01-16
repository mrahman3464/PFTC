class AJXFromPage<BasePage


  element(:name){|b|b.text_field(id:"title")}
  element(:comment){|b|b.textarea(id:"description")}
  element(:submitBtn){|b|b.button(id:"btn-submit")}
  element(:successMSG){|b|b.div(id:"submit-control")}



def fillUpAJXForm
  name.when_present.set('Abu Abdul')
  comment.when_present.set('assfdsfghgfhjhgkhgffdsggfj')
end

def clickOnSubmitBtn
  submitBtn.when_present.click
end



  def printAndVerifySuccessMSG
    sleep 10
    if successMSG.text.include? "Form submited Successfully!"
      puts successMSG.text
      puts "Test passed"

    else
      puts "Test Failed"
    end
    sleep 5
  end





end