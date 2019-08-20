Then (/^I Go to privacy settings$/) do
  @pages.login.userSettings.click
  expect(page).to have_xpath("//*[text()='My Account']")
  @pages.home.privacyButton.click
  @pages.home.checkBoxEdge.click
  sleep 10
end

