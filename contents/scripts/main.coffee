# utils 
delay = (ms, func) -> setTimeout func, ms

lc = {}

lc.redrawFooter = () ->
	scrollTop = document.body.scrollTop || document.documentElement.scrollTop
	if scrollTop + window.innerHeight >= lc.body.offsetHeight
		lc.footer.className = "active"
	else
		lc.footer.className = ""

# onload event
window.loaded = () ->
	lc.body = document.getElementsByTagName('body').item(0)
	lc.page = document.getElementById('page')
	lc.footer = document.getElementsByTagName('footer').item(0)
	
	lc.redrawFooter()
	window.addEventListener "scroll", (evt) ->
		# TODO set a timeout
		lc.redrawFooter()

	window.addEventListener "resize", (evt) ->
		lc.redrawFooter()

	lc.footer.addEventListener "click", (evt) ->
		@className = if @className.length == 0 then "active" else ""