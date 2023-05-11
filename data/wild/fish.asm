DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Shore_Good:
	db  35 percent,     KRABBY,     20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     STARYU,     30
	db  70 percent,     time_group 1
	db  90 percent + 1, STARYU,     30
	db 100 percent,     STARYU,     30

.Ocean_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Ocean_Good:
	db  35 percent,     SHELLDER,   20
	db  70 percent,     SHELLDER,   20
	db  90 percent + 1, SHELLDER,   20
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     CHINCHOU,   30
	db  70 percent,     time_group 3
	db  90 percent + 1, CHINCHOU,   30
	db 100 percent,     CHINCHOU,   30

.Lake_Old:
	db  70 percent + 1, GOLDEEN,    10
	db  85 percent + 1, GOLDEEN,    10
	db 100 percent,     GOLDEEN,    10
.Lake_Good:
	db  35 percent,     KRABBY,     20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     STARYU,     30
	db  70 percent,     time_group 5
	db  90 percent + 1, STARYU,     30
	db 100 percent,     STARYU,     30

.Pond_Old:
	db  70 percent + 1, POLIWAG,    10
	db  85 percent + 1, POLIWAG,    10
	db 100 percent,     POLIWAG,    10
.Pond_Good:
	db  35 percent,     KRABBY,     20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     STARYU,     30
	db  70 percent,     time_group 7
	db  90 percent + 1, STARYU,     30
	db 100 percent,     STARYU,     30

.Dratini_Old:
	db  70 percent + 1, DRATINI,    10
	db  85 percent + 1, DRATINI,    10
	db 100 percent,     DRATINI,    10
.Dratini_Good:
	db  35 percent,     DRATINI,    20
	db  70 percent,     DRATINI,    20
	db  90 percent + 1, DRATINI,    20
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     DRATINI,    30
	db  70 percent,     time_group 9
	db  90 percent + 1, DRATINI,    30
	db 100 percent,     DRATINI,    30

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     QWILFISH,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   30
	db  70 percent,     time_group 11
	db  90 percent + 1, QWILFISH,   30
	db 100 percent,     QWILFISH,   30

.Remoraid_Swarm_Old:
	db  70 percent + 1, REMORAID,   10
	db  85 percent + 1, REMORAID,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	db  35 percent,     REMORAID,   20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   30
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   30
	db 100 percent,     REMORAID,   30

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,   20
	db  90 percent + 1, MAGIKARP,   20
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     MAGIKARP,   30
	db  70 percent,     time_group 15
	db  90 percent + 1, MAGIKARP,   30
	db 100 percent,     MAGIKARP,   30

.Dratini_2_Old:
	db  70 percent + 1, MANTINE,    10
	db  85 percent + 1, MANTINE,    10
	db 100 percent,     MANTINE,    10
.Dratini_2_Good:
	db  35 percent,     CORSOLA,    10
	db  70 percent,     CORSOLA,    10
	db  90 percent + 1, CORSOLA,    10
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     DRATINI,    10
	db  70 percent,     time_group 17
	db  90 percent + 1, DRATINI,    10
	db 100 percent,     DRATINI,    10

.WhirlIslands_Old:
	db  70 percent + 1, KRABBY,     10
	db  85 percent + 1, KRABBY,     10
	db 100 percent,     KRABBY,     10
.WhirlIslands_Good:
	db  35 percent,     SHELLDER,   20
	db  70 percent,     SHELLDER,   20
	db  90 percent + 1, SHELLDER,   20
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     STARYU,     30
	db  70 percent,     time_group 19
	db  90 percent + 1, STARYU,     30
	db 100 percent,     STARYU,     30

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     QWILFISH,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     QWILFISH,   30
	db  70 percent,     time_group 21
	db  90 percent + 1, QWILFISH,   30
	db 100 percent,     QWILFISH,   30

.Remoraid_Old:
	db  70 percent + 1, REMORAID,   10
	db  85 percent + 1, REMORAID,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Good:
	db  35 percent,     REMORAID,   20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     time_group 6
.Remoraid_Super:
	db  40 percent,     REMORAID,   30
	db  70 percent,     time_group 7
	db  90 percent + 1, REMORAID,   30
	db 100 percent,     REMORAID,   30

TimeFishGroups:
	;  day              nite
	db SHELLDER,   20,  SHELLDER,   20 ; 0
	db STARYU,     30,  STARYU,     40 ; 1
	db SHELLDER,   20,  SHELLDER,   20 ; 2
	db CHINCHOU,   30,  CHINCHOU,   30 ; 3
	db KRABBY,     20,  KRABBY,     20 ; 4
	db STARYU,     30,  STARYU,     30 ; 5
	db KRABBY,     20,  KRABBY,     20 ; 6
	db STARYU,     30,  STARYU,     30 ; 7
	db DRATINI,    20,  DRATINI,    20 ; 8
	db DRATINI,    30,  DRATINI,    30 ; 9
	db QWILFISH,   20,  QWILFISH,   20 ; 10
	db QWILFISH,   30,  QWILFISH,   30 ; 11
	db REMORAID,   20,  REMORAID,   20 ; 12
	db REMORAID,   30,  REMORAID,   30 ; 13
	db MAGIKARP,   20,  MAGIKARP,   20 ; 14
	db MAGIKARP,   30,  MAGIKARP,   30 ; 15
	db CORSOLA,    10,  CORSOLA,    10 ; 16
	db DRATINI,    10,  DRATINI,    10 ; 17
	db SHELLDER,   20,  SHELLDER,   20 ; 18
	db STARYU,     30,  STARYU,     30 ; 19
	db QWILFISH,   20,  QWILFISH,   20 ; 20
	db QWILFISH,   30,  QWILFISH,   30 ; 21
