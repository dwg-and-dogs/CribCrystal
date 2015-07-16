VermilionMagnetTrainSpeechHouse_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

PokefanFScript_0x191eb7:
	jumptextfaceplayer UnknownText_0x191ec0

YoungsterScript_0x191eba:
	jumptextfaceplayer UnknownText_0x191f16

VermilionMagnetTrainSpeechHouseBookshelf:
	jumpstd picturebookshelf

UnknownText_0x191ec0:
	text "Do you know about"
	line "the MAGNET TRAIN?"

	para "It's a railway"
	line "that goes to GOL-"
	cont "DENROD in JOHTO."
	done

UnknownText_0x191f16:
	text "I want to go to"
	line "SAFFRON to see"
	cont "the MAGNET TRAIN."
	done

VermilionMagnetTrainSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 4, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def $7, $3, 4, GROUP_VERMILION_CITY, MAP_VERMILION_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, SIGNPOST_READ, VermilionMagnetTrainSpeechHouseBookshelf
	signpost 1, 1, SIGNPOST_READ, VermilionMagnetTrainSpeechHouseBookshelf

	; people-events
	db 2
	person_event SPRITE_POKEFAN_F, 7, 6, LEFT << 2 | $0, $0, -1, -1, $0, 0, PokefanFScript_0x191eb7, -1
	person_event SPRITE_YOUNGSTER, 7, 4, LEFT << 2 | $2, $0, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, YoungsterScript_0x191eba, -1
