GoldenrodDeptStore1F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

ReceptionistScript_0x55981:
	jumptextfaceplayer UnknownText_0x55993

GentlemanScript_0x55984:
	jumptextfaceplayer UnknownText_0x559b7

PokefanFScript_0x55987:
	jumptextfaceplayer UnknownText_0x55a1a

BugCatcherScript_0x5598a:
	jumptextfaceplayer UnknownText_0x55a3a

GoldenrodDeptStore1FDirectory:
	jumptext GoldenrodDeptStore1FDirectoryText

GoldenrodDeptStore1FElevatorButton:
	jumpstd elevatorbutton

UnknownText_0x55993:
	text "Welcome to GOLDEN-"
	line "ROD DEPT.STORE."
	done

UnknownText_0x559b7:
	text "The DEPT.STORE"
	line "has a decent se-"
	cont "lection."

	para "But some items"
	line "are only available"

	para "as GAME CORNER"
	line "prizes."
	done

UnknownText_0x55a1a:
	text "I'm raring to shop"
	line "again today!"
	done

UnknownText_0x55a3a:
	text "Mom's good at"
	line "bargain hunting."

	para "She always buys"
	line "stuff at lower"
	cont "prices."
	done

GoldenrodDeptStore1FDirectoryText:
	text "1F SERVICE COUNTER"

	para "2F TRAINER'S"
	line "   MARKET"

	para "3F BATTLE"
	line "   COLLECTION"

	para "4F MEDICINE BOX"

	para "5F TM CORNER"

	para "6F TRANQUIL SQUARE"

	para "ROOFTOP LOOKOUT"
	done

GoldenrodDeptStore1F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $7, $7, 9, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $7, $8, 9, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $0, $f, 2, GROUP_GOLDENROD_DEPT_STORE_2F, MAP_GOLDENROD_DEPT_STORE_2F
	warp_def $0, $2, 1, GROUP_GOLDENROD_DEPT_STORE_ELEVATOR, MAP_GOLDENROD_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, SIGNPOST_READ, GoldenrodDeptStore1FDirectory
	signpost 0, 3, SIGNPOST_READ, GoldenrodDeptStore1FElevatorButton

	; people-events
	db 4
	person_event SPRITE_RECEPTIONIST, 5, 14, UP << 2 | $2, $0, -1, -1, $0, 0, ReceptionistScript_0x55981, -1
	person_event SPRITE_POKEFAN_F, 8, 9, UP << 2 | $2, $0, -1, -1, $0, 0, PokefanFScript_0x55987, -1
	person_event SPRITE_BUG_CATCHER, 9, 9, UP << 2 | $1, $1, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, BugCatcherScript_0x5598a, -1
	person_event SPRITE_GENTLEMAN, 9, 15, DOWN << 2 | $2, $11, -1, -1, $0, 0, GentlemanScript_0x55984, -1
