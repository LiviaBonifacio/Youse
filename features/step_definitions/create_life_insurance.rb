# encoding: utf-8
# !/usr/bin/env ruby

Given(/^access life insurance page$/) do
  visit "https://www.youse.com.br/seguro-vida"
  @life.link_cotacao_life.click
end

When(/^Inform contact data$/) do
  @life.enter_name.set(Faker::Name.first_name
  @life.enter_phone.set('1199999-9999')
  @life.enter_email.set(Faker::Internet.email)
end

And (/^click on the simulation$/) do
  @life.click_simulacao.click
end

And (/^enter personal data$/) do
  @life.enter_dateBirth.set('11051987')
  @life.enter_work.click
  @life.enter_occupation.set('analista de folha de pagamento')
  first(:option, 'Analista de folha de pagamento').select_option
  find(:option, 'Acima de R$ 7.000,00').select_option
end

And (/^enter civil status$/) do
  first(:option, 'Sou casado(a)').select_option
end

And (/^inform partner data$/) do
  @life.enter_datePartner.set('12011987')
  @life.click_workPartner.click
  within @life.enter_occupationPartner do
    find(:option, 'Analista de sistemas').select_option
  end
end

And (/^click on the price$/) do
  @life.see_price.click
end

Then (/^system displays plans successfully$/) do
  expect(page).to have_content ("Nós temos alguns planos pré-selecionados tipo vc.")
end
