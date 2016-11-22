# encoding: utf-8
# !/usr/bin/env ruby

Given(/^access registration screen$/) do
  visit "https://www.youse.com.br/users/sign_up"
end

When(/^inform the necessary data$/) do
  @account.user_name.set(Faker::Name.name)
  @account.new_email.set(Faker::Internet.email)
  @account.new_password.set('plsc1234')
  @account.password_confirmation.set('plsc1234')
end

And (/^click on send register$/) do
  @account.click_send.click
end

Then (/^successful registration$/) do
  expect(page).to have_content ("Bem vindo! Você realizou seu registro com sucesso.")
end
