define [
  'app'
  'soundcloud'
], (app, soundcloud) ->
  app.register.service 'soundcloudAPI',
    class SoundcloudAPI
      @$inject = ['$q']
      constructor: (@q) ->
        console.log @q
        SC.initialize
          client_id:    'c30798df2de8d56a188158c893818d87'
          redirect_uri: 'http://localhost:5000/callback.html'

      connect: ->
        SC.connect ->
          SC.get '/me', (me)->
            console.log me

      getLikes: ->
        deferred = @q.defer()
        SC.get "/users/7624310/favorites",
          limit: 40
        , (data) ->
          deferred.resolve data
        deferred.promise


