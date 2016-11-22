
Before ('@general') do
  page.driver.browser.manage.window.maximize
  @login = Login.new
  @logout = Logout.new
  @account = Account.new
  @life = Life.new
end

Before ('@login') do
  login = Login.new
  page.driver.browser.manage.window.maximize
  visit "https://www.youse.com.br/users/email_verifications/new"
  login.user_email.set('yousetesteautomation@gmail.com')
  login.click_next_step.click
  login.user_password.set('plsc2013')
  login.click_entrar.click
end

After do
	Capybara.reset_sessions!
end
