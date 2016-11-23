# encoding: utf-8
#!/usr/bin/env ruby

class Login <SitePrism::Page
  element :user_email, ".floating-label-form__input-text"
  element :click_next_step, ".button.button-highlight.button--centered"
  element :user_password, "#user_password"
  element :click_entrar, ".button.button-highlight.button--centered"
end

class Logout <SitePrism::Page
  element :click_user, ".account-dropdown__menu.links-list.account-dropdown__menu__right"
  element :click_exit, "#track_logout"
end

class Account <SitePrism::Page
  element :user_name, "#user_name"
  element :new_email, "#user_email"
  element :new_password, "#user_password"
  element :password_confirmation, "#user_password_confirmation"
  element :click_send, ".button.button-highlight.button--centered"
end

class Life <SitePrism::Page
  element :link_cotacao_life, ".button-rounded.button-rounded__orange.bt-quotation"
  element :enter_name, "#life_order_flow_lead_person_data_lead_person_attributes_name"
  element :enter_phone, "#life_order_flow_lead_person_data_lead_person_attributes_phone"
  element :enter_email, "#life_order_flow_lead_person_data_lead_person_attributes_email"
  element :click_simulacao, '.button.button--primary'
  element :enter_dateBirth, "#life_order_flow_pricing_requirements_insured_person_attributes_date_of_birth"
  element :enter_datePartner, "#life_order_flow_pricing_requirements_insured_person_mate_attributes_date_of_birth"
  element :enter_work, ".select2-selection__arrow"
  element :enter_occupation, ".select2-search__field"
  element :click_workPartner, :xpath, '//*[@id="life_quote_insured_person_mate_group"]/fieldset[2]/span/span[1]/span/span[2]'
  element :enter_occupationPartner, '#life_order_flow_pricing_requirements_insured_person_mate_attributes_occupation'
  element :see_price, ".button.button--primary"
end
