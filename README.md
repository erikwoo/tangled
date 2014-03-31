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
		&
			padding-top 40px

		<<clock
			h3= new Date()
				&
					fixed top left 1em
					font-size 20px
					color steelblue
					opacity .9
		<ddd
			h2= new Date()
				&
					font-size 10px
					opacity .4

		each item in [1,2,3,4,5]
			p= item
				&
					display inline-block
					font-size 24px
					transition all 1s linear

		::clock
			setInterval refresh.clock, 1000

		::=d3+clock+jquery
			while true
				await setTimeout defer(), 1000

				d3.selectAll('p').data([1..5]).style "margin", (d)->
					Math.pow(2,Math.random()*5+2) + "px"

				jquery('body').prepend(templates.ddd).find('h2:gt(5)').remove()
```