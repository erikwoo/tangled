module.exports = (app, express,dir)->
	path = require 'path'
	#jade = require 'tanglee'
	app.configure ->
		app.set 'views', dir
		app.use express.urlencoded()
		app.use express.json()
		app.use express.methodOverride()
		#app.use express.compress()
		app.use '', app.router
		app.use express.static path.resolve dir, '.out'
		
		#app.set 'view engine', 'tangle'
		#app.engine 'tangle', jade.__express
		require('tangle').serve app

		#app.configure 'development', ->
		#	app.use express.errorHandler()

	app.get '/', (req, res) ->
		res.render "index", {}
fs = require 'fs'
path = require 'path'
tangle = require('tangle')
await fs.readFile './index.tangle', defer err, str
#await tangle.compile str.toString(),
#	filename:path.resolve './index.tangle'
#, defer err,fn
#console.log fn()
tangle.render str.toString(),
	filename:path.resolve './index.tangle'
,console.log.bind(console)