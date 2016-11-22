# encoding: utf-8
# !/usr/bin/env ruby

Given(/^sign in to login screen$/) do
  visit "https://www.youse.com.br/users/email_verifications/new"
end

When(/^enter the email$/) do
  fill_in "email", :with=> "yousetesteautomation@gmail.com"
end

And(/^click next step$/) do
  page.find(:css, ".button.button-highlight.button--centered").click
end

And(/^system asks for the password$/) do
  fill_in "user[password]", :with=> "plsc2013"
end

And(/^click enter$/) do
  page.find(:css, ".button.button-highlight.button--centered").click
end

Then (/^login with sucess$/) do
  expect(page).to have_content ("Login efetuado com sucesso.")
end
