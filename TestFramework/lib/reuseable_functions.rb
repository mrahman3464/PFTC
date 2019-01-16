module ReuseableFunction


  def excel(excel_file_name, work_sheet_name,row,column)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    $read_workbook = RubyXL::Parser.parse("#{dir_to_excel}#{excel_file_name}")
    $worksheet = $read_workbook["#{work_sheet_name}"]
    $worksheet[row][column].value
  end


  def excel_sheet(work_sheet_name,row,column)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    $read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/Test_Data.xlsx")
    $worksheet = $read_workbook["#{work_sheet_name}"]
    $worksheet[row][column].value
  end



  def login_with_random_email_pp_env

    obj_refresh_and_wait(user_id)
    obj_refresh_and_wait(pass_word)
    obj_refresh_and_wait(submit_button)


    str_email=rand(300..100000000)
    string1=[*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,8].join
    string2=[*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,4].join
    string3=[*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,4].join
    string4=[*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,4].join
    string5=[*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,12].join

    f = string1+"-"+string2+"-"+string3+"-"+string4+"-"+string5
    str_phone=[*('0'..'9')].shuffle[0,8].join
    randdom_userid= "eit_tester#{str_email}@gmail.com|#{@f}|PUBLIC-SG-ELIS-Applicant|eit_tester#{str_email}@gmail.com|~|~|8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918|~|~|~|(202) 555-#{str_phone}"

    user_id.when_present.set "#{randdom_userid}"
    pass_word.when_present.set('admin')
    submit_button.when_present.click
  end

  def random_email
    str_email=rand(1..1000)
    randdomEmail= "xyx#{str_email}@gmail.com"
  end

  def fill_Your_Full_Name
    last_name.when_present(60).set getRecord("lastName")
    first_name.when_present(60).set getRecord("firstName")
    middle_name.when_present(60).set getRecord("middleName")
  end



  def fillup_mailing_address

    dir_to_AlienRecord = Dir.pwd + '/lib/config/data/Addresses.json'
    file = File.read(dir_to_AlienRecord)
    data_hash = JSON.parse(file)
    size=rand(0..60588)
    streetAddress="#{ data_hash[size]["streetNumber"]} "+ "#{data_hash[size]["streetName"]}"
    getCity=data_hash[size]["city"]
    getState=data_hash[size]["state"]
    getZip= data_hash[size]["zipCode"]
    getCounty=data_hash[size]["stateCode"]
    dir_to_excel = Dir.pwd + '/lib/config/data'
    read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/Test_Data.xlsx")
    worksheet = read_workbook['Personal_info']
    in_care_of_name.when_present(60).set getFullName
    unitType.when_present(60).select worksheet[1][4].value
    apt_number.when_present(60).set worksheet[1][5].value
    street_name_and_number.when_present(60).set streetAddress
    country.when_present(60).select worksheet[1][7].value
    city.when_present(60).set getCity
    state.when_present(60).select getState
    zip_code.when_present(60).set getZip

    sleep 5
  end





  $b = [*10..28].sample
# #  wait and visiable for object
# # object =  wait 9 second for  specific object
# #  ErrorMsgDescription = if the object not display, Error message should describe
#  --------------------------------------------------------------------------------------------------------------------------------------
  def objWait(obj)

    @counter = 0

    while obj.exist? == false do
      @counter +=1
      if @counter == 15
        puts  " *** Requested object was not found ***"
        break
      else
        sleep 5
      end

    end

  end

  #Usage of objWait(obj)
  # element(:iAgreeButton) {|b| b.span(text:"I Agree")}
  #
  #
  # def agreed_Terms_condition
  #   objRefresh(iAgreeButton)
  #   sleep 2
  #   # iAgreeButton.when_present.click
  #   if iAgreeButton.exists?
  #     @browser.send_keys [:enter]
  #     puts "   ICAM My Access system displayed as expected    "
  #   end
  #
  #
  # end


  def datapath filename
    File.expand_path(File.join(File.dirname(__FILE__), filename))
  end

  def getRecord(record)
    dir_to_AlienRecord = Dir.pwd + '/lib/config/data/TestData.json'
    # puts "File Directory: #{dir_to_AlienRecord}"
    file = File.read(dir_to_AlienRecord)
    $data_hash = JSON.parse(file)
    $a2=rand(0..100000)
    $data_hash[$a2][record]
  end

  def getFullName
    dir_to_AlienRecord = Dir.pwd + '/lib/config/data/TestData.json'
    # puts "File Directory: #{dir_to_AlienRecord}"
    file = File.read(dir_to_AlienRecord)
    $data_hash = JSON.parse(file)
    $a2=rand(0..100000)
    $full_name="#{$data_hash[$a2]["firstName"]} "+ "#{$data_hash[$a2]["lastName"]}"

  end

  def getStreetAddress(x,y)

    dir_to_AlienRecord = Dir.pwd + '/config/data/Addresses.json'
    #puts "File Directory: #{dir_to_AlienRecord}"
    file = File.read(dir_to_AlienRecord)
    $data_hash = JSON.parse(file)
    # puts data_hash.size
    $size=rand(0..60588)
    $data_hash[$size][x]
    $data_hash[$size][y]
    $address="#{$data_hash[$size][x]} "+ "#{$data_hash[$size][y]}"
    # puts address
  end



  def getPhoneNumber
    $string3="(#{('2'..'9').to_a.shuffle[0,3].join})"+('0'..'9').to_a.shuffle[0,7].join
    return $string3
  end

  def getAddressRecord(record)

    dir_to_AlienRecord = Dir.pwd + '/lib/config/data/Addresses.json'
    #puts "File Directory: #{dir_to_AlienRecord}"
    file = File.read(dir_to_AlienRecord)
    data_hash = JSON.parse(file)
    # puts data_hash.size
    size=rand(0..60588)
    puts data_hash[size][record]
  end


  def generate_height(size=1)
    charset = %w{4 5 6 7}
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
  end

  def getWeight
    $a=rand(100..220)
    return $a
  end

  def fileUpload(file_name)
    dir_to_file = Dir.pwd + '/lib/config/data/'
    @browser.file_field.set("#{dir_to_file}#{file_name}")
  end


  # def upload_file
  #   window = RAutomation::Window.new :title => "Open"
  #   window.activate
  #   sleep 3
  #   #window.button(:value => "&Close").close
  #   window.send_keys :tab
  #   window.send_keys :tab
  #   window.send_keys :tab
  #   window.send_keys :enter
  # end
#  --------------------------------------------------------------------------------------------------------------------------------------

  def objRefresh(obj)

    @counter = 0

    while obj.present? == false do
      @counter +=1
      if @counter == 9
        puts  " *** Requested object was not found ***"
        break
      else
        @browser.refresh
        sleep 3
      end
    end
  end

#   ----------------------------------------------------------------------------------------------------------------------------------------------------------

  def worksheet(excel_doc_name, workbook_name)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/#{excel_doc_name}.xlsx")
    worksheet = read_workbook["#{workbook_name}"]
  end

#  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  def objVisiable(obj)

    @counter = 0

    while obj.present? == false && obj.exist == false do
      @counter +=1
      if @counter == 5
        puts  " *** Requested object was not found ***"
        break
      else
        sleep 2
      end
    end
  end


#  ---------------------------------------------- #####   MODULE   END HERE  ####### ----------------------------------------------------------------------------------------

end

#  --------------------------------------------------------------------------------------------------------------------------------------
# @browser.title.include? 'https://sso.preprod.uscis.dhs.gov/sso/dashboard'
# puts '*****  Login Successful as Manager *****'

#---------------------------------------------------------------------------------------------------------------------------
#element(:myRequest_requsetID) { |b| b.link(text: "#{$requestID}") }
# def myRequestID
#
#   objWait(myRequest_requsetID)
#   @browser.text.include? myRequest_requsetID.text
#   myRequest_requsetID.when_present.click
#
# end

#--------------------------------------------------------------------------------------------------------------------------------
# def access_status
#   if @browser.text.include? "Completed"
#     puts " Requested access has been approved "
#   elsif @browser.text.include? "Created"
#     puts " Requested access has not been approved "
#   elsif @browser.text.include? "Expired"
#     puts " Requested access has not been approved "
#   end
#   @browser.text.include? "Completed"
#
#
#   puts "......................................"
#
#
#
#   puts "......................................"
# end
#---------------------------------------------------------------------------------------------------------------------------------
# def submit_Access_Request_Validation
#   sleep 3
#   success_message = successMSG.when_present.text
#   successMSG_RequestID = success_message.split('t ').last
#   # objRefresh(requestID)
#   sleep 3
#   $requestID = requestID_Number.when_present.text
#
#   if (successMSG_RequestID == $requestID)
#     puts "  ------   Access Request submitted as expected and  Request ID : #{$requestID}  -------------  "
#   else
#
#   end
#
#   $task_ID = task_ID.when_present.text
#
#   puts "  ^^^^^ Access Request submitted as expected and  Task ID : #{$task_ID} ^^^^^^^^^^^^^  "
#
# end

#---------------------------------------------------------------------------------------------------------------------------------

# def select_RequestType(sheetName,row,col)
#
#   requestType.when_present.click
#   # requestNewRole.when_present.click #select('Request New Role - Request access to a new system or role')
#   dir_to_excel = Dir.pwd + '/lib/config/data'
#   read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/System_Access_Request.xlsx")
#   worksheet = read_workbook[sheetName]
#
#   @browser.div(text: worksheet[row][col].value).when_present.click
#
# end


#on(Create_New_Request).select_RequestType('ICAM_Public_MyAccount_Access_Re',1,0)


#------------------------------------------------------------------------------------------------------------------------------------

#@browser.iframe(id:'mail').iframe(xpath:'//*[@id="container"]/iframe').link(xpath:'/html/body/p[2]/a').click
