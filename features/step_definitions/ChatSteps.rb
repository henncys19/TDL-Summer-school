Then (/^I Send a Chat Message with text (.*)$/) do |text_message|
    @pages.home.chatMessageInput.visible?
    @pages.home.chatMessageInput.send_keys(text_message)
    find(@pages.home.chatMessageInput.css).set("\n")
    expect(page).to have_text(text_message)
    sleep 2
end   

Then (/^I Start a New Chat with (.*)$/) do |username|
    @pages.home.friendsTab.visible?
    @pages.home.friendsTab.click
    find('span.username-2b1r56.username-1r0gCl', text: username).click
end 


Then (/^I clean the direct message list$/) do
    @pages.home.friendsTab.click
    page.all(:xpath, "//button[starts-with(@class, 'close')]").each do |closeButton|
        sleep 2
        find(:xpath, "//span[starts-with(@class, 'name')]", match: :first).hover
        sleep 2
        find(:xpath, "//button[starts-with(@class, 'close')]", match: :first).click
        sleep 2
    end
end 