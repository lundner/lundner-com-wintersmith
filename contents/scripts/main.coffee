# utils 
delay = (ms, func) -> setTimeout func, ms


# onload event
window.loaded = () ->
	body = document.getElementsByTagName('body').item(0)
	page = document.getElementById('page')
	footer = document.getElementsByTagName('footer').item(0)

	footer.addEventListener "click", (evt) ->
		@className = if @className.length == 0 then "active" else ""