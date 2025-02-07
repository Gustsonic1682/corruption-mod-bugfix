function onEvent(n,v1, v2)
    if n == 'The Flashy Event' then
        -- Making the FLash --
        makeLuaSprite('flash', '', 0, 0)
        makeGraphic('flash', 1280, 720, v1)

        -- Adding Properties to the Flash -- 
        setProperty('flash.scale.x',2)
        setProperty('flash.scale.y',2)
        setProperty('flash.alpha', 1)
        doTweenAlpha('flashgone', 'flash', 0, v2)
    end

        -- Focusing the flash on the camera --
        setObjectCamera('flash', 'camOther')
        
        -- Adding the Sprite --   
        addLuaSprite('flash', true)
end
