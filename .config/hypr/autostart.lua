hl.on("hyprland.start", function()
    -- Установка громкости микрофона
    hl.exec_cmd("pactl set-source-volume @DEFAULT_SOURCE@ 23%")

    -- Запуск панели (с задержкой для корректного старта)
    hl.exec_cmd("sleep 4; waybar")

    -- Утилита для скриншотов
    hl.exec_cmd("XDG_CURRENT_DESKTOP=Sway flameshot")

    -- Блокировка экрана при бездействии и перед сном
    hl.exec_cmd("swayidle -w timeout 1200 'hyprlock' before-sleep 'hyprlock'")

    -- Демон обоев и установка обоев
    hl.exec_cmd("awww-daemon && awww img /home/cati0n/Pictures/Wallpaper/space.jpg")

    -- Агент аутентификации PolicyKit
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    -- Скрипт для запуска пользовательских программ
    hl.exec_cmd("bash ~/.config/hypr/scripts/run_default_progs.sh &")
end)