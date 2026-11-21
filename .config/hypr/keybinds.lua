local mainMod = "ALT"

----------------
---- GENERAL BINDS ----
----------------
hl.bind(mainMod .. " + Q", hl.dsp.window.kill())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("nemo"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + T", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

----------------
---- NIGHT LIGHT ----
----------------
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("! pgrep wlsunset && wlsunset -T 5000"))
hl.bind("CONTROL_L + N", hl.dsp.exec_cmd("pkill wlsunset"))

----------------
---- MOVE FOCUS ----
----------------
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))

----------------
---- WORKSPACES ----
----------------
-- Переключение рабочих столов
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
end
hl.bind(mainMod .. " + R", hl.dsp.focus({ workspace = "name:Monitor" }))

-- Специальный workspace
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.window.move({ workspace = "special" }))
hl.bind(mainMod .. " + W", hl.dsp.workspace.toggle_special())

-- Перемещение окна на рабочий стол
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.window.move({ workspace = "name:Monitor" }))

----------------
---- RESIZE WINDOWS ----
----------------
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 10, y = 0 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -10, y = 0 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -10 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 10 }), { repeating = true })

----------------
---- MOUSE WORKSPACES ----
----------------
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

----------------
---- MOUSE MOVE/RESIZE ----
----------------
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

----------------
---- MEDIA KEYS ----
----------------
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 75+"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 75-"), { repeating = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { repeating = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { repeating = true })

----------------
---- SCREENSHOTS & POWER ----
----------------
hl.bind("Print", hl.dsp.exec_cmd("XDG_CURRENT_DESKTOP=Sway flameshot gui"))
hl.bind("XF86PowerOff", hl.dsp.exec_cmd("bash ~/.config/hypr/scripts/powermenu.sh & sleep 0.4; hyprctl dispatch focuswindow '^(Rofi)'"), { repeating = true })