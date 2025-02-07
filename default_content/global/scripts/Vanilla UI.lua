--Script Made by Shaggy.
--This is the first script i made so it probably has a lot of bugs and ill definetly try to fix the issues and make the code more efficent in future versions!

--Options

local MinimizedScoreInfo = true --Removes accuracy and misses
local HideSongPosition = true --Hides the song position bar.
local ScoreTween = false --Doesnt work as of now i apologize for my lack of coding experience.
local GreenAndRedHealthColors = true --Makes BF's health color always green and the opponent's always red.



--Script Code

function onCreatePost()
  --For making hide song position do what it should.          
  if HideSongPosition then
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
  end

    --Making the GreenAndRedHealthBarColors do what it should.
  if GreenAndRedHealthColors then
    setHealthBarColors('ff0000', '66ff33')
  end

  --Removing accuracy and misses to make the vanilla UI.
  if MinimizedScoreInfo then
   setTextString('scoreTxt', 'Score:'..score)
  end

end

function onUpdatePost()
  --Making the scoreTxt stay the same after a note is hit.
  if MinimizedScoreInfo then
   setTextString('scoreTxt', 'Score:'..score)
  end

  scaleObject('scoreTxt', 1, 1)   --Goofy ahhh code but it works.

end
   
--Fixing Notesplash offset.
function onUpdate()

  for i = 0, getProperty('grpNoteSplashes.length') do
    setPropertyFromGroup('grpNoteSplashes', i, 'scale.x', 1)
    setPropertyFromGroup('grpNoteSplashes', i, 'scale.y', 1)
    setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -20)
    setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -14.2)
    setPropertyFromGroup('grpNoteSplashes', i, 'alpha', 0.6)
  end
end