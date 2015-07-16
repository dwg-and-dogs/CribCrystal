LavenderTownSpeechHouse_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

PokefanFScript_0x7ea47:
	jumptextfaceplayer UnknownText_0x7ea4d

LavenderTownSpeechHouseBookshelf:
	jumpstd picturebookshelf

UnknownText_0x7ea4d:
	text "LAVENDER is a"
	line "tiny, quiet town"

	para "at the foot of the"
	line "mountains."

	para "It's gotten a bit"
	line "busier since the"

	para "RADIO TOWER was"
	line "built."
	done

LavenderTownSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN
	warp_def $7, $3, 3, GROUP_LAVENDER_TOWN, MAP_LAVENDER_TOWN

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, SIGNPOST_READ, LavenderTownSpeechHouseBookshelf
	signpost 1, 1, SIGNPOST_READ, LavenderTownSpeechHouseBookshelf

	; people-events
	db 1
	person_event SPRITE_POKEFAN_F, 7, 6, UP << 2 | $3, $0, -1, -1, (PAL_OW_BLUE << 4) | $80, 0, PokefanFScript_0x7ea47, -1
