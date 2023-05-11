Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 3 ; # items
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db -1 ; end

MartCherrygroveDex:
	db 4 ; # items
	db POKE_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db -1 ; end

MartViolet:
	db 5 ; # items
	db POKE_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 6 ; # items
	db CHARCOAL
	db POKE_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 3 ; # items
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db -1 ; end

MartGoldenrod2F1:
	db 4 ; # items
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db BURN_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F:
	db 3 ; # items
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartGoldenrod4F:
	db 1 ; # items
	db POTION
	db -1 ; end

MartGoldenrod5F1:
	db 4 ; # items
	db TM_SANDSTORM
	db TM_SUNNY_DAY
	db TM_RAIN_DANCE
	db TM_PSYCH_UP
	db -1 ; end

MartGoldenrod5F2:
	db 4 ; # items
	db TM_SANDSTORM
	db TM_SUNNY_DAY
	db TM_RAIN_DANCE
	db TM_PSYCH_UP
	db -1 ; end

MartGoldenrod5F3:
	db 5 ; # items
	db TM_SANDSTORM
	db TM_SUNNY_DAY
	db TM_RAIN_DANCE
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db -1 ; end

MartGoldenrod5F4:
	db 4 ; # items
	db TM_SANDSTORM
	db TM_SUNNY_DAY
	db TM_RAIN_DANCE
	db TM_ROCK_SMASH
	db -1 ; end

MartOlivine:
	db 5 ; # items
	db GREAT_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 6 ; # items
	db POKE_BALL
	db GREAT_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db REVIVE
	db -1 ; end

MartMahogany1:
	db 5 ; # items
	db FULL_RESTORE
	db MAX_REPEL
	db POKE_BALL
	db RARE_CANDY
	db SLOWPOKETAIL
	db -1 ; end

MartMahogany2:
	db 6 ; # items
	db RAGECANDYBAR
	db GREAT_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartBlackthorn:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db REVIVE
	db -1 ; end

MartViridian:
	db 5 ; # items
	db ULTRA_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartPewter:
	db 4 ; # items
	db GREAT_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db -1 ; end

MartCerulean:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db SURF_MAIL
	db -1 ; end

MartLavender:
	db 5 ; # items
	db GREAT_BALL
	db RARE_CANDY
	db FULL_RESTORE
	db MAX_REPEL
	db BURN_HEAL
	db -1 ; end

MartVermilion:
	db 6 ; # items
	db ULTRA_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db BURN_HEAL
	db LITEBLUEMAIL
	db -1 ; end

MartCeladon2F1:
	db 4 ; # items
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db REVIVE
	db -1 ; end

MartCeladon2F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon3F:
	db 5 ; # items
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_SANDSTORM
	db -1 ; end

MartCeladon4F:
	db 3 ; # items
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db -1 ; end

MartCeladon5F1:
	db 1 ; # items
	db RARE_CANDY
	db -1 ; end

MartCeladon5F2:
	db 3 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db -1 ; end

MartFuchsia:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartSaffron:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db FULL_RESTORE
	db RARE_CANDY
	db FULL_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartMtMoon:
	db 6 ; # items
	db POKE_DOLL
	db RARE_CANDY
	db FULL_RESTORE
	db LEMONADE
	db MAX_REPEL
	db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau:
	db 6 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db FULL_RESTORE
	db RARE_CANDY
	db REVIVE
	db MAX_REPEL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
