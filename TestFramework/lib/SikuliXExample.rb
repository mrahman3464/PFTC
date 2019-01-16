require 'java'
require 'rukuli'
#require 'Sikuli'
require 'watir'
screen=Rukuli::Screen.new
#Argument1: Image Path
Watir::Browser.new :chrome
@browser.goto "https://www.google.com/"
screen.click("C:\\image4.png")