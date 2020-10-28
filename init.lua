hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
  hs.notify.new({title="Hammerspoon", informativeText="Config reloaded"}):send()
end)

-- fullscreen current focused window
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "F", function()
  local win = hs.window.focusedWindow()
  win:setFullScreen(not win:isFullScreen())
end)

-- maximize current focused window
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
  hs.window.focusedWindow():maximize()
end)

-- make system sleep
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Q", function()
  hs.caffeinate.systemSleep()
end)

-- Open terminal
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "T", function()
  hs.application.launchOrFocus("iTerm")
end)

-- decrease volume
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "[", function()
  local device = hs.audiodevice.current()
  if device.volume > 0 then
    device.device:setOutputVolume(device.volume - 5)
    hs.alert.show('Volume - : ' .. device.volume)
  end
end)

-- increase volume
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "]", function()
  local device = hs.audiodevice.current()
  if device.volume < 100 then
    device.device:setOutputVolume(device.volume + 5)
    hs.alert.show('Volume + : ' .. device.volume)
  end
end)