local url = matches[1]

-- Highlight the URL
selectString(url, 1)
setLink(function() openUrl(url) end, f"Open {url} in your browser.")
setBold(true)
setUnderline(true)

-- Now undo the changes
deselect()
setBold(false)
setUnderline(false)
