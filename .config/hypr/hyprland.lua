-- 
--   _   _                  _                 _    ____             __ _       
--  | | | |_   _ _ __  _ __| | __ _ _ __   __| |  / ___|___  _ __  / _(_) __ _ 
--  | |_| | | | | '_ \| '__| |/ _` | '_ \ / _` | | |   / _ \| '_ \| |_| |/ _` |
--  |  _  | |_| | |_) | |  | | (_| | | | | (_| | | |__| (_) | | | |  _| | (_| |
--  |_| |_|\__, | .__/|_|  |_|\__,_|_| |_|\__,_|  \____\___/|_| |_|_| |_|\__, |
--         |___/|_|                                                      |___/ 
-- 
--


----------------
---- MONITORS ----
----------------
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1,
    bitdepth = 85,
})

----------------
---- ENV VARS ----
----------------
hl.env("XCURSOR_SIZE", "24")

----------------
---- INPUT ----
----------------
hl.config({
    input = {
        kb_layout = "us, ru",
        kb_options = "grp:caps_toggle",
        kb_variant = "",
        kb_model = "",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
        },
    },
})

----------------
---- GENERAL ----
----------------
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 2,
        col = {
            active_border = "rgb(74d3d6)",
            inactive_border = "rgb(13e0eb)",
        },
        layout = "dwindle",
    },
})

----------------
---- DECORATION ----
----------------
hl.config({
    decoration = {
        rounding = 5,
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            new_optimizations = true,
        },
        shadow = {
            enabled = false,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
    },
})

----------------
---- ANIMATIONS ----
----------------
hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("myBezier", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "myBezier" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 4, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default" })

----------------
---- LAYOUTS ----
----------------
hl.config({
    dwindle = {
        preserve_split = true,
    },
})

----------------
---- GESTURES ----
----------------
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

----------------
---- DEVICES ----
----------------
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

----------------
---- WINDOW RULES ----
----------------
hl.window_rule({
    match = { class = "^(.*)(telegram)(.*)$" },
    float = true,
    maximize = true,
})

----------------
---- MODULES ----
----------------
-- Подключение внешних файлов конфигурации
-- require создаёт отдельную область видимости для каждого файла
require("keybinds")
require("autostart")