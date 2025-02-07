on = true
fuckingfodsniu = {
  'healthBar', 'timeBar', 'timeTxt', 'timeBarTxt', 'scoreTxt', 'iconP1', 'iconP2', 'fuckingBarLeft', 'fuckingBarRight', 'fuckingBarBG'
}
function onEvent(n)
  if n == 'cinematic' then
    on = not on
    for _, item in pairs(fuckingfodsniu) do
      doTweenAlpha(item, item, on and 1 or 0.0001, 0.5)
    end
  end
end