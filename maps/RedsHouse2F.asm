RedsHouse2F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

MapRedsHouse2FSignpost0Script:
	jumptext UnknownText_0x19b050

MapRedsHouse2FSignpost1Script:
	jumptext UnknownText_0x19b087

UnknownText_0x19b050:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done

UnknownText_0x19b087:
	text "It looks like it"
	line "hasn't been used"
	cont "in a long time…"
	done

RedsHouse2F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $0, $7, 3, GROUP_REDS_HOUSE_1F, MAP_REDS_HOUSE_1F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 5, 3, SIGNPOST_READ, MapRedsHouse2FSignpost0Script
	signpost 1, 0, SIGNPOST_READ, MapRedsHouse2FSignpost1Script

	; people-events
	db 0
