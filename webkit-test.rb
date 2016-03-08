class WebkitTest < Sinatra::Base
  configure do
    enable :inline_templates
  end

  get "/webkit" do
  	erb :webkit
  end
end

__END__

@@layout
<!doctype html>
<html>
  <head>
    <title>Capybara-webkit test</title>
  </head>
  <body>
    <%= yield %>
  </body>
</html>

@@webkit

<h1>Capybara-webkit test</h1>

<script>
  if(window.location.hash){
    window.location.href = window.location.href.replace(/#/, '?fragment=')
  }
</script>
