-----------------------------------------------------------------------------------------
-- 示範如何載入並播放音樂/效，並介紹Tap事件的偵聽。更多Audio Lib資訊請參考以下網址
-- https://docs.coronalabs.com/daily/api/library/audio/index.html
-- Author: Zack Lin
-- Time: 2015/3/13
-----------------------------------------------------------------------------------------

_SCREEN = {
	WIDTH = display.viewableContentWidth,
	HEIGHT = display.viewableContentHeight
}

_SCREEN.CENTER = {
	X = display.contentCenterX,
	Y = display.contentCenterY
}
--載入音效，長度不會太長
local sound = audio.loadSound( "soundEffect.wav" )
--載入音樂，一般為mp3
local music = audio.loadStream( "music.mp3" )

--佈置元件
local btn_sound = display.newImageRect( "drum.png" , 80 , 80 )
btn_sound.x = _SCREEN.CENTER.X
btn_sound.y = _SCREEN.CENTER.Y - 150

local btn_music = display.newImageRect( "music.png", 80, 80 )
btn_music.x = _SCREEN.CENTER.X
btn_music.y = _SCREEN.CENTER.Y 

local btn_stop = display.newImageRect( "stop.png", 80, 80 )
btn_stop.x = _SCREEN.CENTER.X
btn_stop.y = _SCREEN.CENTER.Y + 150

--函式宣告
--可透過設定system.setTapDelay來優化多點觸控時間，否則每只的觸碰都會被視為單一
--的Tap

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
