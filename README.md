tangled
=======
trying to mix jade, stylus, iced 
using [tangle](http://github.com/nassimwu/tangle)

```
doctype html5
html
	head
		title tangled
	body
		<<clock
			h3= new Date()
				&
					fixed top left 1em
					font-size 20px
					color steelblue
					opacity .9

		each item in [1,2,3,4,5]
			p= item
				&
					display inline-block
					margin 1em
					transition all .4s ease

		::clock
			setInterval refresh.clock, 1000

		::=d3+clock
			while true
				await setTimeout defer(), 1000
				d3.selectAll('p').data([1..5]).style "font-size", (d)->
					Math.pow(2,Math.random()*5+2) + "px"
```