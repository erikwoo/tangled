module.exports = (app, express,dir)->
	path = require 'path'
	app.configure ->
		app.set 'views', dir
		app.use express.urlencoded()
		app.use express.json()
		app.use express.methodOverride()
		app.use express.compress()
		app.use '', app.router
		app.use express.static path.resolve dir, '.out'
		
		require('tangle').serve app
		
	app.get '/', (req, res) ->
		res.render "index", {}

require('tangle').renderFile './index.jade', console.log.bind console