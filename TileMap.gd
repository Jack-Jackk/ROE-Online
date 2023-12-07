extends TileMap

var moisture = FastNoiseLite.new()
var temperature = FastNoiseLite.new()
var altitude = FastNoiseLite.new()
var width = 273
var height = 273

func _ready():
	moisture.seed = randi()
	temperature.seed = randi()
	altitude.seed = randi()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	generate_chunk(position)

func generate_chunk(position):
	var tile_pos = local_to_map(position)
		for x in range(width):
			for y in range(height):
				var moist = moisture.get_noise_2d(tile_pos.x + x, tile_pos.y + y)
				var temp = temperature.get_noise_2d(tile_pos.x + x, tile_pos.y + y)
				var alt = altitude.get_noise_2d(tile_pos.x + x, tile_pos.y + y)
				set_cell(0, Vector2i(tile_pos.x + x, tile_pos.y + y), 0, Vector2i(1,1))