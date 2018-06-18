# Before do
#  # Change browser size to full screen
#  page.driver.browser.manage.window.maximize
# end

# Before do |scenario|
#   The +scenario+ argument is optional,
#   but if you use it, you can get the title,
#   description, or name (title + description) of the scenario
#   that is about to be
#   executed.
# end

# After do |scenario|
#  Do something after each scenario.
#  The +scenario+ argument is optional, but
#  if you use it, you can inspect status with
#  the #failed?, #passed? and #exception methods.
# Examples:
#   if scenario.failed?
#     subject = "[Project X] #{scenario.exception.message}"
#     send_failure_email(subject)
#   end
#   Cucumber.wants_to_quit = true if scenario.failed?
# end

# Before('@cucumis, @sativus') do
#  This will only run before scenarios tagged
#  with @cucumis OR @sativus.
# end

# AfterStep('@cucumis', '@sativus') do
#  This will only run after steps within scenarios tagged
#  with @cucumis AND @sativus.
# end

# AfterConfiguration do |config|
#  puts "Features dwell in #{config.feature_dirs}"
# end

# at_exit do
#   Add code you want to be executed when tests
#   are completely done (e.g. database cleanup)
# end
