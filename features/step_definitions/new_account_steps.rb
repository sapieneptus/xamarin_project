Given /^I am on the Registration Screen$/ do
  element_exists("button marked:'Sign Up'")

  while uia_query(:alert).count > 0
    # dismiss system dialogue for notifications/location
    if uia_query("button marked:'Allow'").count > 0
      uia_tap_mark 'Allow'
    elsif uia_query("button marked:'OK'").count > 0
      uia_tap_mark 'OK'
    end
  end
  sleep(STEP_PAUSE)
end

And(/^I enter "(.*?)" as my (.*?)$/) do |val, key|
  case val
    when 'username'
      touch(query("textField")[0])
    when 'email'
      touch(query("textField")[1])
  end

  wait_for_keyboard
  keyboard_enter_text(val)
end

Then(/^I should see the text "(.*?)"/) do |txt|
  text_view = query("textView marked:'too short'")
  raise "The message '#{txt}' is not visible in the View." unless text_view.any?
end