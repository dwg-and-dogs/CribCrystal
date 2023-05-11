BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw SPINARAK,   300
	dbw LEDYBA,     285
	dbw VENONAT,    226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw LEDIAN,     286
	dbw LEDIAN,     251
	dbw LEDYBA,     237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw LEDIAN,     357
	dbw YANMA,      349
	dbw SPINARAK,   368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw LEDYBA,     332
	dbw LEDIAN,     324
	dbw YANMA,      321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw LEDIAN,     318
	dbw SPINARAK,   295
	dbw LEDYBA,     285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw ARIADOS,    366
	dbw VENONAT,    329
	dbw SPINARAK,    314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw LEDIAN,     341
	dbw LEDYBA,     301
	dbw LEDYBA,     264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw ARIADOS,    326
	dbw ARIADOS,    292
	dbw ARIADOS,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw SPINARAK,   270
	dbw SPINARAK,   282
	dbw SPINARAK,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw VENONAT,    267
	dbw SPINARAK,   254
	dbw YANMA,      259
