	object_const_def
;	const TINTOWER3F_POKE_BALL

TinTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 14, TIN_TOWER_2F, 1
	warp_event 16,  2, TIN_TOWER_4F, 2

	def_coord_events

	def_bg_events

	def_object_events
