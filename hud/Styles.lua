--[[
	Styles.lua
	Author: powerkasi
]]

Styles = {
	hudTypes = {
		bottomCenter = {
			rightAnchor = 0.5 + 0.05,
			rightMargin = 0,
			bottomMargin = 0.154,
		},
		bottomRight = {
			rightAnchor = 1.0,
			rightMargin = 0.004,
			bottomMargin = 0.35,
		}
	},

	hudStyles = {
		ponsse = {
			backgroundColor 			= Colors.WHITE,
			backgroundOpacity 			= 0.3,
			cutOnGoingBackgroundOpacity = 0.8,
			pineBackgroundColor			= Colors.PONSSE_BLUE,
			spruceBackgroundColor		= Colors.PONSSE_GREEN,
			highlightBackGroundColor	= Colors.PONSSE_YELLOW,
			fontColor					= Colors.BLACK
		},
		komatsu = {
			sideHudBottomMargin			= 0.35,
			centerHudBottomMargin 		= 0.154,
			backgroundColor 			= Colors.KOMATSU_DARKBLUE,
			backgroundOpacity 			= 0.3,
			cutOnGoingBackgroundOpacity = 0.8,
			pineBackgroundColor			= Colors.BLUE,
			spruceBackgroundColor		= Colors.GREEN,
			highlightBackGroundColor	= Colors.KOMATSU_DARKBLUE,
			fontColor					= Colors.KOMATSU_YELLOW
		},
		johndeere = {
			sideHudBottomMargin			= 0.35,
			centerHudBottomMargin 		= 0.154,
			backgroundColor 			= Colors.WHITE,
			backgroundOpacity 			= 0.3,
			cutOnGoingBackgroundOpacity = 0.8,
			pineBackgroundColor			= Colors.BLUE,
			spruceBackgroundColor		= Colors.GREEN,
			highlightBackGroundColor	= Colors.YELLOW,
			fontColor					= Colors.BLACK
		},
		default = {
			sideHudBottomMargin			= 0.35,
			centerHudBottomMargin 		= 0.154,
			backgroundColor 			= Colors.WHITE,
			backgroundOpacity 			= 0.3,
			cutOnGoingBackgroundOpacity = 0.8,
			pineBackgroundColor			= Colors.BLUE,
			spruceBackgroundColor		= Colors.GREEN,
			highlightBackGroundColor	= Colors.YELLOW,
			fontColor					= Colors.BLACK
		}
	}
}

return Styles