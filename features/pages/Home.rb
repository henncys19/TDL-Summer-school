require_relative '../../features/pages/base'
# Login page class
class HomePage < BasePage
  attr_accessor :email, :password, :loginButton, :skipButton, :homeButton, :friendsTab, :friendTag, :voiceCallButton, :privacyButton, :checkBoxEdge
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton

  def initialize

    @homeButton = Element.new(:css,"[aria-label='Home']")

    @friendsTab = Element.new(:xpath,"//div[text()='Friends']")

    @friendTag = Element.new(:xpath,"//span[text()='#']")  

    @voiceCallButton = Element.new(:css,"[aria-label='Start Voice Call']")

    @leaveCallButton = Element.new(:xpath,"//div[text()='Leave Call']")
  
    @chatMessageInput = Element.new(:css,"textarea:first-of-type")

    @userSettings = Element.new(:xpath,"[aria-label='User Settings']")

    @logOutButton = Element.new(:xpath,"//div//div[text()='Log Out']")

    @logOutConfirm = Element.new(:xpath,"//button//div[text()='Log Out']")

    @privacyButton = Element.new(:xpath,"//div[text()='Privacy & Safety']")

    @checkBoxEdge = Element.new(:xpath,"(//label)[3]")

  end
  

  def fill_form(user)
    @email.visible?
    @email.click
    @email.send_keys user['email']
    @password.click
    @password.send_keys user['password']
    @loginButton.click
  end

  def load_home_page
    visit ''
  end
end