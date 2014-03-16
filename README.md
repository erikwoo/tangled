tangled
=======
trying to mix jade, stylus, iced 
using [tangle](http://github.com/nassimwu/tangle)

```
body
	<<clock
		h3= new Date()
			&
				relative top left
				font-size 100px
				color steelblue
				text-shadow 1px 1px 1px #777
	::clock
		$ = require 'jquery'
		setInterval ->
			$('.clock').html templates.clock()
		, 1000

	::main
		console.time 'a'
		await setTimeout defer(), 1000
		console.timeEnd 'a'
		require 'clock'
```