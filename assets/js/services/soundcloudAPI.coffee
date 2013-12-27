define [
  'app'
  'soundcloud'
], (app, soundcloud) ->
  limit = 50
  page_size = 8
  likes = []
  app.register.service 'soundcloudAPI',
    class SoundcloudAPI
      @$inject = ['$q']
      constructor: (@q) ->
        SC.initialize
          client_id:    'c30798df2de8d56a188158c893818d87'
          redirect_uri: 'http://localhost:5000/callback.html'


      connect: ->
        SC.connect ->
          SC.get '/me', (me)->
            console.log me

      getLikes: (page) ->
        console.log offx = (page-1) * page_size
        deferred = @q.defer()

        if offx >= likes.length
          console.log 'first'
          SC.get "/users/7624310/favorites",
            limit: limit
            offset: offx
          , (data) ->
            _.each data, (d)->
              likes.push d
            deferred.resolve likes.splice offx
        else
          console.log 'second'
          deferred.resolve likes.splice offx
        deferred.promise



