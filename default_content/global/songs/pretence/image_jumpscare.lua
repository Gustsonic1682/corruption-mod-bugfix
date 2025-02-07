function onEvent(n,v1,v2)
  --v1 = image
  --v2 = how much it'll wait before it disappears
  if n == 'image_jumpscare' then
    makeLuaSprite('cock', v1)
    setObjectCamera('cock', 'camHUD')
    setProperty('cock.alpha', 0)
    doTweenAlpha('cock','cock',1,7)
    addLuaSprite('cock')
    screenCenter('cock')
    runTimer('blenis', (v2 or 0)+7)
  end
end
function onTimerCompleted(t)
  if t == 'blenis' then
    doTweenAlpha('cock','cock',0,2)
  end
end