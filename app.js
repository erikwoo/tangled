require('iced-coffee-script').register();

var express = require('express'),
	app = express(),
	server = app.listen(process.env.PORT || 3000);

require('./server')(app, express, __dirname);
