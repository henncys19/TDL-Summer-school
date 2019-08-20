Then (/^I Go to privacy settings$/) do
  @pages.login.userSettings.click
  expect(page).to have_xpath("//*[text()='My Account']")
  @pages.home.privacyButton.click
  @pages.home.checkBoxEdge.click
  find(:xpath, "//div[starts-with(@class, 'closeButton')]").click
  sleep 10
end

