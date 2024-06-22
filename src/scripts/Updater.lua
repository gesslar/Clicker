-- Auto Updater
__PKGNAME__ = __PKGNAME__ or {}
__PKGNAME__.MupdateUser = "__PKGNAME__.AutoMupdate"
__PKGNAME__.MupdateFunction = "__PKGNAME__:AutoMupdate"

function __PKGNAME__:AutoMupdate(event)
    for _, timer in ipairs(getNamedTimers(self.MupdateUser)) do
        if timer.name == timerName then return end
    end

    registerNamedTimer(self.MupdateUser, self.MupdateUser, 2, function()
        deleteAllNamedTimers(self.MupdateUser)

        require("__PKGNAME__\\Mupdate")
        local updater = Mupdate:new({
                download_path = "https://github.com/gesslar/__PKGNAME__/releases/latest/download/",
                package_name = "__PKGNAME__",
                version_check_download = "version.txt",
                version_check_save = "version.txt",
            })
         updater:Start()
    end)
end

-- Start it up
__PKGNAME__.MupdateLoadHandler = __PKGNAME__.MupdateLoadHandler or
    registerNamedEventHandler (
        __PKGNAME__.MupdateUser, -- username
        "__PKGNAME__.Load", -- handler name
        "sysLoadEvent",       -- event name
        __PKGNAME__.MupdateFunction  -- function name
    )
__PKGNAME__.MupdateInstallHandler = __PKGNAME__.MupdateInstallHandler or
    registerNamedEventHandler(
        __PKGNAME__.MupdateUser, -- username
        "__PKGNAME__.Install", -- handler name
        "sysInstallPackage",  -- event name
        __PKGNAME__.MupdateFunction  -- function name
    )
