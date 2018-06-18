# Place your helper methods in this module
module Helpers
  def load_jquery_in_app
    load_jquery = <<-JS
    var jq = document.createElement('script');
    jq.src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js";
    document.getElementsByTagName('head')[0].appendChild(jq);
    JS
    page.execute_script load_jquery
  end

  def hide_element selector
    find(selector)
    page.execute_script "$('#{selector}').hide();"
  end
end

World(Helpers)
