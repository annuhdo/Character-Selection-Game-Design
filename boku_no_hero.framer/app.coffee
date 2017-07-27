Canvas.image = "images/bg.png"

# Set up FlowComponent
flow = new FlowComponent
flow.showNext(screenA)

# Quick fix from importing design to code
quirk_badge.y = 302
navigation.y = 506
quirk_badge_1.y = 302
quirk_badge_2.y = 302
quirk_badge_3.y = 302
quirk_badge_4.y = 302

# Names and Quirks
name_badge_1.parent = screenA
quirk_badge_1.parent = screenA
name_badge_2.parent = screenA
quirk_badge_2.parent = screenA
name_badge_3.parent = screenA
quirk_badge_3.parent = screenA
name_badge_4.parent = screenA
quirk_badge_4.parent = screenA

# Characters
All_Might_render.parent = screenA
Midoriya_render.parent = screenA
Todoroki_render.parent = screenA
Uraraka_render.parent = screenA
Tsuyu_render.parent = screenA

# Navigation and CTA
pink_bg_overlay.parent = screenA
green_bg_overlay.parent = screenA
navigation.parent = screenA
play_btn_1.parent = screenA
play_btn_2.parent = screenA
play_btn_3.parent = screenA
play_btn_4.parent = screenA

# Hide everything other than Midoriya's view
name_badge_1.opacity = 0
quirk_badge_1.opacity = 0
name_badge_2.opacity = 0
quirk_badge_2.opacity = 0
name_badge_3.opacity = 0
quirk_badge_3.opacity = 0
name_badge_4.opacity = 0
quirk_badge_4.opacity = 0
play_btn_1.opacity = 0
play_btn_2.opacity = 0
play_btn_3.opacity = 0
play_btn_4.opacity = 0
pink_bg_overlay.opacity = 0
green_bg_overlay.opacity = 0
# Hide characters
All_Might_render.opacity = 0
Todoroki_render.opacity = 0
Uraraka_render.opacity = 0
Tsuyu_render.opacity = 0
All_Might_render.x = 500
Todoroki_render.x = 500
Uraraka_render.x = 500
Tsuyu_render.x = 500
musicBeat.opacity = 0
sound_on_text.opacity = 0


# Track current page
currentPage = "midoriya"

animateCharacter = (xValue) ->
	show:
		opacity: 1
		x: xValue
		animationOptions:
			time: 0.4
			curve: Bezier.ease
	hide:
		opacity: 0
		x: 500
		animationOptions:
			time: 0.4
			curve: Bezier.ease

# States for each character
Midoriya_render.states = animateCharacter(168)
All_Might_render.states = animateCharacter(126)
Todoroki_render.states = animateCharacter(161)
Uraraka_render.states = animateCharacter(174)
Tsuyu_render.states = animateCharacter(166)

Midoriya_render.stateSwitch("show")
	
hideCharacter = () ->
	if currentPage == "midoriya"
		Midoriya_render.animate("hide")
		quirk_badge.opacity = 0
		name_badge.opacity = 0
		midoriya.borderWidth = 0
		play_btn.opacity = 0

	else if currentPage == "allMight"
		All_Might_render.animate("hide")
		quirk_badge_1.opacity = 0
		name_badge_1.opacity = 0
		all_might.borderWidth = 0
		play_btn_1.opacity = 0

	else if currentPage == "todoroki"
		Todoroki_render.animate("hide")
		quirk_badge_2.opacity = 0
		name_badge_2.opacity = 0
		todoroki.borderWidth = 0
		play_btn_2.opacity = 0

	else if currentPage == "uraraka"
		Uraraka_render.animate("hide")
		quirk_badge_3.opacity = 0
		name_badge_3.opacity = 0
		uraraka.borderWidth = 0
		play_btn_3.opacity = 0
		pink_bg_overlay.opacity = 0

	else if currentPage == "tsuyu"
		Tsuyu_render.animate("hide")
		quirk_badge_4.opacity = 0
		name_badge_4.opacity = 0
		tsuyu.borderWidth = 0
		play_btn_4.opacity = 0
		green_bg_overlay.opacity = 0

sound = new Audio("sounds/Tab1.m4a")
bgMusic = new Audio("sounds/Background.m4a")

playBgMusic = false

soundIcon.onClick (event, layer) ->
	playBgMusic = not playBgMusic
	if (playBgMusic)
		sound_on_text.opacity = 1
		musicBeat.opacity = 1
		deadBeat.opacity = 0
		sound_off_text.opacity = 0
		bgMusic.play()
	else
		sound_off_text.opacity = 1
		musicBeat.opacity = 0
		deadBeat.opacity = 1
		sound_on_text.opacity = 0
		bgMusic.pause()


midoriya.onClick (event, layer) ->
	if currentPage != "midoriya"
		hideCharacter()
		currentPage = "midoriya"
		Midoriya_render.animate("show")
		midoriya.borderColor = "rgba(254,241,51,1)"
		midoriya.borderWidth = 6
		screenA.backgroundColor = "rgb(33, 228, 189)"
		name_badge.opacity = 1
		quirk_badge.opacity = 1
		play_btn.opacity = 1
		sound.play()

all_might.onClick (event, layer) ->
	if currentPage != "allMight"
		hideCharacter()
		currentPage = "allMight"
		All_Might_render.animate("show")
		all_might.borderColor = "rgba(254,241,51,1)"
		all_might.borderWidth = 6
		screenA.backgroundColor = "rgb(16, 24, 67)"
		name_badge_1.opacity = 1
		quirk_badge_1.opacity = 1
		play_btn_1.opacity = 1
		sound.play()

todoroki.onClick (event, layer) ->
	if currentPage != "todoroki"
		hideCharacter()
		currentPage = "todoroki"
		Todoroki_render.animate("show")
		todoroki.borderColor = "rgba(254,241,51,1)"
		todoroki.borderWidth = 6
		screenA.backgroundColor = "rgb(255, 119, 68)"
		name_badge_2.opacity = 1
		quirk_badge_2.opacity = 1
		play_btn_2.opacity = 1
		sound.play()
	
uraraka.onClick (event, layer) ->
	if currentPage != "uraraka"
		hideCharacter()
		currentPage = "uraraka"
		Uraraka_render.animate("show")
		uraraka.borderColor = "rgba(254,241,51,1)"
		uraraka.borderWidth = 6
		screenA.backgroundColor = "rgb(255, 136, 170)"
		name_badge_3.opacity = 1
		quirk_badge_3.opacity = 1
		play_btn_3.opacity = 1
		pink_bg_overlay.opacity = 1
		sound.play()

tsuyu.onClick (event, layer) ->
	if currentPage != "tsuyu"
		hideCharacter()
		currentPage = "tsuyu"
		Tsuyu_render.animate("show")
		tsuyu.borderColor = "rgba(254,241,51,1)"
		tsuyu.borderWidth = 6
		screenA.backgroundColor = "rgb(94, 224, 77)"
		name_badge_4.opacity = 1
		quirk_badge_4.opacity = 1
		play_btn_4.opacity = 1
		green_bg_overlay.opacity = 1
		sound.play()
		
