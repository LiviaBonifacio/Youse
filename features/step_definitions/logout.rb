# encoding: utf-8
# !/usr/bin/env ruby

Given(/^logged in user no system$/) do
  expect(page).to have_content("Que tal um seguro 100% online e direto com você?")
end

When(/^click exit$/) do
    visit "https://www.youse.com.br/account"
    @logout.click_user.click
    @logout.click_exit.click
end

Then(/^system returns to home page$/) do
  #expect(page).to have_content ("Minha Conta")
end
