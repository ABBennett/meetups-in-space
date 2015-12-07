require 'spec_helper'

feature "User sees all meetups" do
  let(:user) do
    User.create(
      provider: "github",
      uid: "1",
      username: "jarlax1",
      email: "jarlax1@launchacademy.com",
      avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
    )
  end

  let(:meetup) do
      Meetup.create(
      name: "Hacker Monkeys",
      details: "This is where we code stuff",
      location: "344 Loring Street, Boston, MA",
      creator: 3
    )
  end

  scenario "user sees meetups" do
    visit '/meetups'
    sign_in_as user
    save_and_open_page
    expect(page).to have_content "Hacker Monkeys"
  end
end
