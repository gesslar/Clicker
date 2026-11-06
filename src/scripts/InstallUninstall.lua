local colour = "<royal_blue>"
local userName = "__PKGNAME__"

registerNamedEventHandler(
  userName,
  userName .. ":Install",
  "sysInstall",
  function(_, pkg)
    if pkg == userName then
      cecho(colour .. "[__PKGNAME__]<r> Welcome to __PKGNAME__ __VERSION__.\n")
      deleteNamedEventHandler(userName, userName .. ":Install")
    end
  end
)

registerNamedEventHandler(
  userName,
  userName .. ":Uninstall",
  "sysUninstall",
  function(_, pkg)
    if pkg == userName then
      cecho(colour .. "[__PKGNAME__]<r> You have uninstalled __PKGNAME__ __VERSION__.\n")
      deleteNamedEventHandler(userName, userName .. ":Uninstall")
    end
  end
)
