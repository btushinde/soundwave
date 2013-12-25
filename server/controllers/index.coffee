# Just renders index.jade

exports.index = (req, res) ->
  # sc = require("soundclouder")
  # sc_client_id = 'c30798df2de8d56a188158c893818d87'
  # sc_client_secret = '3721d75878558aa4c91a27189dad1a83'
  # sc_redirect_uri = '/'

  # # client id, secret and redirect url are the values obtained from http://soundcloud/you/apps
  # sc.init sc_client_id, sc_client_secret, sc_redirect_uri

  # # code sent by the browser based SoundCloud Login that redirects to the redirect_uri
  # sc.auth code, (error, access_token) ->
  #   if error
  #     console.error e.message
  #   else
  #     console.log "access_token=" + access_token

  # sc.get "/tracks/" + track_id, access_token, (data) ->
  #   console.log data.title




  res.render 'index'