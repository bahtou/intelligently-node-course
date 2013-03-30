app.get '/login', (req, res) ->
  # Render the login template
  res.render "views/login",
    title: 'Login',
    stylesheet: 'login'