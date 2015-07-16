IcePathB2FMahoganySide_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

BoulderScript_0x7e5a3:
	jumptext UnknownText_0x7e5ad

ItemFragment_0x7e5a6:
	db FULL_HEAL, 1

ItemFragment_0x7e5a8:
	db MAX_POTION, 1

MapIcePathB2FMahoganySideSignpostItem0:
	dw $0095
	db CARBOS
	

UnknownText_0x7e5ad:
	text "It's immovably"
	line "imbedded in ice."
	done

IcePathB2FMahoganySide_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $1, $11, 2, GROUP_ICE_PATH_B1F, MAP_ICE_PATH_B1F
	warp_def $b, $9, 1, GROUP_ICE_PATH_B3F, MAP_ICE_PATH_B3F
	warp_def $4, $b, 3, GROUP_ICE_PATH_B1F, MAP_ICE_PATH_B1F
	warp_def $6, $4, 4, GROUP_ICE_PATH_B1F, MAP_ICE_PATH_B1F
	warp_def $c, $4, 5, GROUP_ICE_PATH_B1F, MAP_ICE_PATH_B1F
	warp_def $c, $c, 6, GROUP_ICE_PATH_B1F, MAP_ICE_PATH_B1F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 17, 0, SIGNPOST_ITEMIFSET, MapIcePathB2FMahoganySideSignpostItem0

	; people-events
	db 6
	person_event SPRITE_BOULDER, 7, 15, DOWN << 2 | $1, $0, -1, -1, $0, 0, BoulderScript_0x7e5a3, EVENT_BOULDER_IN_ICE_PATH_1
	person_event SPRITE_BOULDER, 11, 8, DOWN << 2 | $1, $0, -1, -1, $0, 0, BoulderScript_0x7e5a3, EVENT_BOULDER_IN_ICE_PATH_2
	person_event SPRITE_BOULDER, 16, 7, DOWN << 2 | $1, $0, -1, -1, $0, 0, BoulderScript_0x7e5a3, EVENT_BOULDER_IN_ICE_PATH_3
	person_event SPRITE_BOULDER, 17, 16, DOWN << 2 | $1, $0, -1, -1, $0, 0, BoulderScript_0x7e5a3, EVENT_BOULDER_IN_ICE_PATH_4
	person_event SPRITE_POKE_BALL, 13, 12, DOWN << 2 | $1, $0, -1, -1, $1, 0, ItemFragment_0x7e5a6, EVENT_68B
	person_event SPRITE_POKE_BALL, 6, 4, DOWN << 2 | $1, $0, -1, -1, $1, 0, ItemFragment_0x7e5a8, EVENT_68C
