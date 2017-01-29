touch_pin1 = 6
led_pin = 1

function turn_led_on()
    gpio.write(led_pin, gpio.HIGH)
    tmr.alarm(1, 500, tmr.ALARM_SINGLE, function() gpio.write(led_pin, gpio.LOW) end)
end

gpio.trig(touch_pin1, "down" ,function() turn_led_on() end)