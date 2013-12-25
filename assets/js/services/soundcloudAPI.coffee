define [
  'app'
  'soundcloud'
], (app, soundcloud) ->
  app.register.service 'soundcloudAPI',
    class SoundcloudAPI

      constructor: ->
        SC.initialize
          client_id:    'c30798df2de8d56a188158c893818d87'
          redirect_uri: 'http://localhost:5000/callback.html'

      connect: ->
        SC.connect ->
          SC.get '/me', (me)->
            console.log me

      getLikes: ->
        SC.get "/me",
          limit: 1
        , (tracks) ->
          console.log tracks

