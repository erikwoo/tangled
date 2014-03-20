require('iced-coffee-script').register();

var express = require('express'),
	app = express(),
	server = app.listen(process.env.PORT || 3000, function(){
		console.log('server listen on port %d', server.address().port);
	});

require('./server')(app, express, __dirname);
