Then(/^I should see an alert titled "(.*?)"/) do |title|
  text_view = query("alertView marked:'#{title}'")
  raise "The alert titled '#{title}' is not visible in the View." unless text_view.any?
end