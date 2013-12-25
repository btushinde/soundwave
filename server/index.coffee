# express = require 'express'
# app = express()

# # New call to compress content
# app.use(express.compress())

# app.use(express.static(__dirname + '/build'))

# app.listen(process.env.PORT || 3000);




# express = require 'express'
# passport = require 'passport'
# util = require 'util'
# SoundCloudStrategy = require('passport-soundcloud').Strategy
# SOUNDCLOUD_CLIENT_ID = 'c30798df2de8d56a188158c893818d87'
# SOUNDCLOUD_CLIENT_SECRET = '3721d75878558aa4c91a27189dad1a83'

# # Passport session setup.
# #   To support persistent login sessions, Passport needs to be able to
# #   serialize users into and deserialize users out of the session.  Typically,
# #   this will be as simple as storing the user ID when serializing, and finding
# #   the user by ID when deserializing.  However, since this example does not
# #   have a database of user records, the complete SoundCloud profile is
# #   serialized and deserialized.
# passport.serializeUser (user, done) ->
#   done null, user

# passport.deserializeUser (obj, done) ->
#   done null, obj



# # Use the SoundCloudStrategy within Passport.
# #   Strategies in Passport require a `verify` function, which accept
# #   credentials (in this case, an accessToken, refreshToken, and SoundCloud
# #   profile), and invoke a callback with a user object.
# passport.use new SoundCloudStrategy(
#   clientID: SOUNDCLOUD_CLIENT_ID
#   clientSecret: SOUNDCLOUD_CLIENT_SECRET
#   callbackURL: "http://127.0.0.1:3000/auth/soundcloud/callback"
# , (accessToken, refreshToken, profile, done) ->

#   # asynchronous verification, for effect...
#   process.nextTick ->

#     # To keep the example simple, the user's SoundCloud profile is returned
#     # to represent the logged-in user.  In a typical application, you would
#     # want to associate the SoundCloud account with a user record in your
#     # database, and return that user instead.
#     done null, profile

# )




# app = express.createServer()

# # configure Express
# app.configure ->
#   app.set "views", __dirname + "/views"
#   app.set "view engine", "ejs"
#   app.use express.logger()
#   app.use express.cookieParser()
#   app.use express.bodyParser()
#   app.use express.methodOverride()
#   app.use express.session(secret: "keyboard cat")

#   # Initialize Passport!  Also use passport.session() middleware, to support
#   # persistent login sessions (recommended).
#   app.use passport.initialize()
#   app.use passport.session()
#   app.use app.router
#   app.use express.static(__dirname + "/build")

# app.get "/", (req, res) ->
#   res.render "index",
#     user: req.user


# app.get "/account", ensureAuthenticated, (req, res) ->
#   res.render "account",
#     user: req.user


# app.get "/login", (req, res) ->
#   res.render "login",
#     user: req.user



# # GET /auth/soundcloud
# #   Use passport.authenticate() as route middleware to authenticate the
# #   request.  The first step in SoundCloud authentication will involve
# #   redirecting the user to soundcloud.com.  After authorization, SoundCloud
# #   will redirect the user back to this application at
# #   /auth/soundcloud/callback
# app.get "/auth/soundcloud", passport.authenticate("soundcloud"), (req, res) ->


# # The request will be redirected to SoundCloud for authentication, so this
# # function will not be called.

# # GET /auth/soundcloud/callback
# #   Use passport.authenticate() as route middleware to authenticate the
# #   request.  If authentication fails, the user will be redirected back to the
# #   login page.  Otherwise, the primary route function function will be called,
# #   which, in this example, will redirect the user to the home page.
# app.get "/auth/soundcloud/callback", passport.authenticate("soundcloud",
#   failureRedirect: "/login"
# ), (req, res) ->
#   res.redirect "/"

# app.get "/logout", (req, res) ->
#   req.logout()
#   res.redirect "/"

# app.listen 3000



# # Simple route middleware to ensure user is authenticated.
# #   Use this route middleware on any resource that needs to be protected.  If
# #   the request is authenticated (typically via a persistent login session),
# #   the request will proceed.  Otherwise, the user will be redirected to the
# #   login page.
# ensureAuthenticated = (req, res, next) ->
#   return next()  if req.isAuthenticated()
#   res.redirect "/login"