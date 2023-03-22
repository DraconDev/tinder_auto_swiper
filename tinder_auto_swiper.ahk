^F11:: Pause

^F12::
    Links := ["https://tinder.com/app/explore", "https://bumble.com/app"]
    for index, link in Links
    {
        Run % link
        Random, activate_delay, 1.0, 1.5
        Sleep, activate_delay * 10000
        swiping_chance = 0.5
        right_swipes = 3
        current_right_swipes = 0
        while current_right_swipes < right_swipes
        {
            Random, delay, 1.0, 5.0
            Sleep, delay * 1000
            Random, chance, 0.0, 1.0
            if chance > % swiping_chance
            {
                send {right}
                current_right_swipes += 1
            }
            else
                send {left}
        }
        send ^w
    }
return
