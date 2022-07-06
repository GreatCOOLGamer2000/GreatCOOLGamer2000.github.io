function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end


function update (elapsed) 
    if curStep >= 20 and curStep < 1208 then
        local currentBeat = (songPos / 1000)*(bpm/60)
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
            setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
        end
    else
            for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'],i)
            setActorY(_G['defaultStrum'..i..'Y'],i)
            end
        end
end

function beatHit (beat)

end

function stepHit (step)
    if curStep == 120 or curStep == 248 or curStep == 375 or curStep == 632 or curStep == 696 or curStep == 824 or curStep == 952 or curStep == 1208 then
        for i = 0, 7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 90, 0.6, 'setDefault')
        end
    end
end
