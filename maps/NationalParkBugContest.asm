NationalParkBugContest_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

YoungsterScript_0x5c8ec:
	faceplayer
	loadfont
	writetext UnknownText_0x5c94c
	closetext
	loadmovesprites
	end

YoungsterScript_0x5c8f4:
	faceplayer
	loadfont
	writetext UnknownText_0x5c973
	closetext
	loadmovesprites
	end

RockerScript_0x5c8fc:
	faceplayer
	loadfont
	writetext UnknownText_0x5c9a3
	closetext
	loadmovesprites
	end

PokefanMScript_0x5c904:
	faceplayer
	loadfont
	writetext UnknownText_0x5c9cc
	closetext
	loadmovesprites
	end

YoungsterScript_0x5c90c:
	faceplayer
	loadfont
	writetext UnknownText_0x5ca15
	closetext
	loadmovesprites
	end

YoungsterScript_0x5c914:
	faceplayer
	loadfont
	writetext UnknownText_0x5ca52
	closetext
	loadmovesprites
	end

LassScript_0x5c91c:
	faceplayer
	loadfont
	writetext UnknownText_0x5ca8f
	closetext
	loadmovesprites
	end

YoungsterScript_0x5c924:
	faceplayer
	loadfont
	writetext UnknownText_0x5cac8
	closetext
	loadmovesprites
	end

YoungsterScript_0x5c92c:
	faceplayer
	loadfont
	writetext UnknownText_0x5cb25
	closetext
	loadmovesprites
	end

YoungsterScript_0x5c934:
	faceplayer
	loadfont
	writetext UnknownText_0x5cb64
	closetext
	loadmovesprites
	end

MapNationalParkBugContestSignpost0Script:
	jumptext UnknownText_0x5cba7

MapNationalParkBugContestSignpost1Script:
	jumptext UnknownText_0x5cbc8

MapNationalParkBugContestSignpost3Script:
	jumptext UnknownText_0x5cc1d

ItemFragment_0x5c945:
	db PARLYZ_HEAL, 1

ItemFragment_0x5c947:
	db TM_DIG, 1

MapNationalParkBugContestSignpostItem2:
	dw $0084
	db FULL_HEAL
	

UnknownText_0x5c94c:
	text "DON: I'm going to"
	line "win! Don't bother"
	cont "me."
	done

UnknownText_0x5c973:
	text "ED: My PARASECT"
	line "puts #MON to"
	cont "sleep with SPORE."
	done

UnknownText_0x5c9a3:
	text "NICK: I'm raising"
	line "fast #MON for"
	cont "battles."
	done

UnknownText_0x5c9cc:
	text "WILLIAM: I'm not"
	line "concerned about"
	cont "winning."

	para "I'm just looking"
	line "for rare #MON."
	done

UnknownText_0x5ca15:
	text "BENNY: Ssh! You'll"
	line "scare off SCYTHER."

	para "I'll talk to you"
	line "later."
	done

UnknownText_0x5ca52:
	text "BARRY: You should"
	line "weaken bug #MON"

	para "first, then throw"
	line "a BALL."
	done

UnknownText_0x5ca8f:
	text "CINDY: I love bug"
	line "#MON."

	para "I guess you must"
	line "like them too."
	done

UnknownText_0x5cac8:
	text "JOSH: I've been"
	line "collecting bug"

	para "#MON since I"
	line "was just a baby."

	para "There's no way I'm"
	line "going to lose!"
	done

UnknownText_0x5cb25:
	text "SAMUEL: If you've"
	line "got the time to"

	para "chat, go find some"
	line "bug #MON."
	done

UnknownText_0x5cb64:
	text "KIPP: I've studied"
	line "about bug #MON"
	cont "a lot."

	para "I'm going to win"
	line "for sure."
	done

UnknownText_0x5cba7:
	text "RELAXATION SQUARE"
	line "NATIONAL PARK"
	done

UnknownText_0x5cbc8:
	text "What is this"
	line "notice?"

	para "Please battle only"
	line "in the grass."

	para "NATIONAL PARK"
	line "WARDEN'S OFFICE"
	done

UnknownText_0x5cc1d:
	text "TRAINER TIPS"

	para "Print out MAIL by"
	line "opening it then"
	cont "pressing START."
	done

NationalParkBugContest_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $12, $21, 1, GROUP_ROUTE_36_NATIONAL_PARK_GATE, MAP_ROUTE_36_NATIONAL_PARK_GATE
	warp_def $13, $21, 1, GROUP_ROUTE_36_NATIONAL_PARK_GATE, MAP_ROUTE_36_NATIONAL_PARK_GATE
	warp_def $2f, $a, 1, GROUP_ROUTE_35_NATIONAL_PARK_GATE, MAP_ROUTE_35_NATIONAL_PARK_GATE
	warp_def $2f, $b, 1, GROUP_ROUTE_35_NATIONAL_PARK_GATE, MAP_ROUTE_35_NATIONAL_PARK_GATE

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 44, 14, SIGNPOST_READ, MapNationalParkBugContestSignpost0Script
	signpost 31, 27, SIGNPOST_READ, MapNationalParkBugContestSignpost1Script
	signpost 47, 6, SIGNPOST_ITEMIFSET, MapNationalParkBugContestSignpostItem2
	signpost 4, 12, SIGNPOST_READ, MapNationalParkBugContestSignpost3Script

	; people-events
	db 12
	person_event SPRITE_YOUNGSTER, 33, 23, DOWN << 2 | $2, $22, -1, -1, (PAL_OW_RED << 4) | $80, 0, YoungsterScript_0x5c8ec, EVENT_BUG_CATCHING_CONTESTANT_1A
	person_event SPRITE_YOUNGSTER, 26, 32, DOWN << 2 | $2, $22, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, YoungsterScript_0x5c8f4, EVENT_BUG_CATCHING_CONTESTANT_2A
	person_event SPRITE_ROCKER, 22, 13, UP << 2 | $3, $0, -1, -1, (PAL_OW_BLUE << 4) | $80, 0, RockerScript_0x5c8fc, EVENT_BUG_CATCHING_CONTESTANT_3A
	person_event SPRITE_POKEFAN_M, 17, 11, UP << 2 | $0, $1, -1, -1, (PAL_OW_BROWN << 4) | $80, 0, PokefanMScript_0x5c904, EVENT_BUG_CATCHING_CONTESTANT_4A
	person_event SPRITE_YOUNGSTER, 13, 27, DOWN << 2 | $3, $0, -1, -1, (PAL_OW_RED << 4) | $80, 0, YoungsterScript_0x5c90c, EVENT_BUG_CATCHING_CONTESTANT_5A
	person_event SPRITE_YOUNGSTER, 17, 31, DOWN << 2 | $2, $33, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, YoungsterScript_0x5c914, EVENT_BUG_CATCHING_CONTESTANT_6A
	person_event SPRITE_LASS, 27, 11, UP << 2 | $1, $2, -1, -1, (PAL_OW_BLUE << 4) | $80, 0, LassScript_0x5c91c, EVENT_BUG_CATCHING_CONTESTANT_7A
	person_event SPRITE_YOUNGSTER, 31, 15, DOWN << 2 | $2, $11, -1, -1, (PAL_OW_RED << 4) | $80, 0, YoungsterScript_0x5c924, EVENT_BUG_CATCHING_CONTESTANT_8A
	person_event SPRITE_YOUNGSTER, 12, 20, DOWN << 2 | $2, $11, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, YoungsterScript_0x5c92c, EVENT_BUG_CATCHING_CONTESTANT_9A
	person_event SPRITE_YOUNGSTER, 38, 21, DOWN << 2 | $2, $33, -1, -1, (PAL_OW_BLUE << 4) | $80, 0, YoungsterScript_0x5c934, EVENT_BUG_CATCHING_CONTESTANT_10A
	person_event SPRITE_POKE_BALL, 16, 39, DOWN << 2 | $1, $0, -1, -1, $1, 0, ItemFragment_0x5c945, EVENT_658
	person_event SPRITE_POKE_BALL, 47, 5, DOWN << 2 | $1, $0, -1, -1, $1, 0, ItemFragment_0x5c947, EVENT_659
