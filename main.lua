-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- 示範如何載入並播放音樂/效
-- Author: Zack Lin
-- Time: 2015/3/13


_SCREEN = {
	WIDTH = display.viewableContentWidth,
	HEIGHT = display.viewableContentHeight
}

_SCREEN.CENTER = {
	X = display.contentCenterX,
	Y = display.contentCenterY
}
--載入音效
local sound = audio.loadSound( "soundEffect.wav" )
--載入音樂
local music = audio.loadStream( "music.mp3" )

local btn_sound = display.newImageRect( "drum.png" , 80 , 80 )
btn_sound.x = _SCREEN.CENTER.X
btn_sound.y = _SCREEN.CENTER.Y - 150

local btn_music = display.newImageRect( "music.png", 80, 80 )
btn_music.x = _SCREEN.CENTER.X
btn_music.y = _SCREEN.CENTER.Y 

local btn_stop = display.newImageRect( "stop.png", 80, 80 )
btn_stop.x = _SCREEN.CENTER.X
btn_stop.y = _SCREEN.CENTER.Y + 150

--播放音源
function btn_sound:tap( e )
	audio.play( sound )
end

function  btn_music:tap( e )
	audio.play( music )
end

--停止音源
function  btn_stop:tap( e )
	audio.stop(  )
end

btn_sound:addEventListener( "tap" )
btn_music:addEventListener( "tap" )
btn_stop:addEventListener( "tap" )
