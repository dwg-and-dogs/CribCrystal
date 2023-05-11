; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, ZUBAT
	db 3, ZUBAT
	db 2, ZUBAT
	db 2, TEDDIURSA
	db 2, TEDDIURSA
	db 4, TEDDIURSA
	db 4, TEDDIURSA
	; day
	db 3, ZUBAT
	db 3, ZUBAT
	db 2, ZUBAT
	db 2, ZUBAT
	db 2, TEDDIURSA
	db 4, TEDDIURSA
	db 4, TEDDIURSA
	; nite
	db 3, ZUBAT
	db 3, ZUBAT
	db 2, ZUBAT
	db 2, ZUBAT
	db 2, TEDDIURSA
	db 4, TEDDIURSA
	db 4, TEDDIURSA

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, NIDORAN_M
	db 14, NIDORAN_F
	db 14, GROWLITHE
	db 10, GROWLITHE
	db 10, GROWLITHE
	; day
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, NIDORAN_M
	db 14, NIDORAN_F
	db 14, GROWLITHE
	db 10, GROWLITHE
	db 10, GROWLITHE
	; nite
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, NIDORAN_M
	db 14, NIDORAN_F
	db 14, GROWLITHE
	db 10, GROWLITHE
	db 10, GROWLITHE

	db -1 ; end
