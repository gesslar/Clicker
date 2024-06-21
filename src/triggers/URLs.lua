local url = matches[1]
selectString(url, 1)
setLink(function() openUrl(url) end, f"Open {url} in your browser!")
setBold(true)
setUnderline(true)
deselect()
