extends OptionButton

const ICON_SIZE : int = 32

var colours : Array[Color] = []

func _ready() -> void:
	add_colour( "Raspberry", Color(1.0, 0.306, 0.306, 1.0))
	add_colour( "Blueberry", Color(0.306, 0.514, 1.0, 1.0) )

func add_colour ( colour_name : String, colour : Color ) -> void:
	var i : int = item_count
	add_item( colour_name )
	colours.append(colour)
	set_item_icon(i, create_icon_texture(colour))

func create_icon_texture ( colour : Color ) -> Texture:
	var texture : ImageTexture = ImageTexture.new()
	var image : Image = Image.new()
	
	image = Image.create(ICON_SIZE, ICON_SIZE, false, Image.FORMAT_RGBA8)
	image.fill(colour)
	texture = ImageTexture.create_from_image(image)
	
	return texture

func get_selected_colour () -> Color:
	return colours[get_item_index(get_selected_id())]
