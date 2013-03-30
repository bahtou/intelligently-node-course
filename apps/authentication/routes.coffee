routes = (app) ->
  app.get '/login', (req, res) ->
    # Render the login template
    res.render "#{__dirname}/views/login",
      title: 'Login',
      stylesheet: 'login'

module.exports = routes