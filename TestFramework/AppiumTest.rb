require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'



desires_capability = {

    caps: {
        platformName: "Android",
        platformVersion: "7.1.1",
        browserName: "Chrome",
        deviceName: "Google Nexus 5X",
        udid: "192.168.229.101:5555",
       # newCommandTimeout: 60,



    }

}


@driver = Appium::Driver.new(desires_capability,true).start_driver
Appium.promote_appium_methods Object
sleep 5
@driver.get("https://www.facebook.com/")

element=find_element(name:"email")
element.click
element.send_keys("Microsoft")

element=find_element(name:"pass")
element.click
element.send_keys("Microsoft")
# @driver.find_element(name:"email").set("Microsoft")
# @driver.find_element(name:"pass").set("Microsoft")
@driver.quit
puts "Test Passed"