extends Node2D
#
#const LightTexture = preload("res://World/Light.png")
#const GRID_SIZE = 32
#
#onready var fog = $Camera2D/Fog
#onready var player = $YSort/Player
#onready var fog_image_width
#onready var fog_image_height
##onready var display = get_viewport_rect().size
##onready var display_height = display.y
##onready var display_width = display.x
#
##var display_width = ProjectSettings.get("display/window/size/width") 
##var display_height = ProjectSettings.get("display/window/size/height")
#
#
#var fogImage = Image.new()
#var fogTexture = ImageTexture.new()
#var lightImage = LightTexture.get_data()
#var light_offset = Vector2(LightTexture.get_width()/2, LightTexture.get_height()/2)
#
#func _ready():
#	var display = get_viewport_rect().size
#	fog_image_width = display.x
#	fog_image_height = display.y
#	print(position)
#  #move by half the size
#	position -= (display / 2) 
#	print(position)
#	fogImage.create(fog_image_width, fog_image_height, false, Image.FORMAT_RGBAH)
#	fogImage.fill(Color.black)
#	lightImage.convert(Image.FORMAT_RGBAH)
#  #is this right?
#	fog.scale *= GRID_SIZE
#
#
#func update_fog(player_global_position):
#	fogImage.lock()
#	lightImage.lock()
#
#	var fog_global_position = fog.global_position
#
#	# Offset of to the global position of the top left of the shadow
#	var offset = fog_global_position-(Vector2(fog_image_width, fog_image_height)/2.0)
#
#	# Difference between the light position and the fog position
#	var dif = (player_global_position - (light_offset)) - offset
#
#	var light_rect = Rect2(Vector2.ZERO, Vector2(lightImage.get_width(), lightImage.get_height()))
#	fogImage.blend_rect(lightImage, light_rect, dif)
#
#	fogImage.unlock()
#	lightImage.unlock()
#	update_fog_image_texture()
#
#func update_fog_image_texture():
#	fogTexture.create_from_image(fogImage)
#	fog.texture = fogTexture
#
#func _input(_event):
#	#update_fog(get_local_mouse_position()/GRID_SIZE)
#	update_fog(player.global_position)
