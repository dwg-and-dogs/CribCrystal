Route32RuinsofAlphGate_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

OfficerScript_0x69a2d:
	jumptextfaceplayer UnknownText_0x69a36

PokefanMScript_0x69a30:
	jumptextfaceplayer UnknownText_0x69a81

YoungsterScript_0x69a33:
	jumptextfaceplayer UnknownText_0x69abd

UnknownText_0x69a36:
	text "RUINS OF ALPH"

	para "A Look-and-Touch"
	line "Tourist Site"

	para "Try the sliding"
	line "stone panels!"
	done

UnknownText_0x69a81:
	text "You're studying"
	line "the RUINS?"

	para "I see a scientist"
	line "in the making."
	done

UnknownText_0x69abd:
	text "There are drawings"
	line "on stone panels."

	para "I tried moving"
	line "them. I wonder"
	cont "what they are."
	done

Route32RuinsofAlphGate_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $0, 10, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $5, $0, 11, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $4, $9, 2, GROUP_ROUTE_32, MAP_ROUTE_32
	warp_def $5, $9, 3, GROUP_ROUTE_32, MAP_ROUTE_32

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_OFFICER, 6, 9, UP << 2 | $2, $0, -1, -1, (PAL_OW_RED << 4) | $80, 0, OfficerScript_0x69a2d, -1
	person_event SPRITE_POKEFAN_M, 6, 12, UP << 2 | $0, $10, -1, -1, (PAL_OW_BROWN << 4) | $80, 0, PokefanMScript_0x69a30, -1
	person_event SPRITE_YOUNGSTER, 10, 5, UP << 2 | $3, $0, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, YoungsterScript_0x69a33, -1
