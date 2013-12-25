define [
  'app'
  'services/soundcloudAPI'
], (app) ->

  app.register.controller 'HomeCtrl', [
    '$scope'
    '$window'
    '$rootScope'
    '$timeout'
    'soundcloudAPI'
    ($scope, $window, $rootScope, $timeout, SC) ->
      $scope.user =
        avatar_url:                 "https://i1.sndcdn.com/avatars-000053215000-773s90-large.jpg?d53bf9f"
        city:                       "Raleigh"
        country:                    "United States"
        description:                null
        discogs_name:               null
        followers_count:            222
        followings_count:           403
        full_name:                  "Biko"
        id:                         7624310
        kind:                       "user"
        myspace_name:               null
        online:                     true
        permalink:                  "laserbeard"
        permalink_url:              "http://soundcloud.com/laserbeard"
        plan:                       "Pro"
        playlist_count:             3
        primary_email_confirmed:    true
        private_playlists_count:    3
        private_tracks_count:       1
        public_favorites_count:     1384
        quota:                      Object
        subscriptions:              Array[1]
        track_count:                0
        upload_seconds_left:        14172
        uri:                        "https://api.soundcloud.com/users/7624310"
        username:                   "laserbeard"
        website:                    null
        website_title:              null

  ]
