@tool
extends Node

signal loaded_file



func load_external_texture(path):
	var image = Image.new()
	image.load(path)
	var result = ImageTexture.new()
	result.create_from_image(image)
	emit_signal("loaded_file")
	return result


func load_external_mp3(path):
	var mp3_file = FileAccess.open(path, FileAccess.READ)
	var bytes = mp3_file.get_buffer(mp3_file.get_length())
	var stream = AudioStreamMP3.new()
	stream.data = bytes
	emit_signal("loaded_file")
	mp3_file = null
	return stream


func load_external_wav(path):
	var wav_file = FileAccess.open(path, FileAccess.READ)
	var bytes = wav_file.get_buffer(wav_file.get_length())
	var stream = AudioStreamWAV.new()
	stream.data = bytes
	emit_signal("loaded_file")
	wav_file = null
	return stream


func load_external_ogg(path): # FIXME AudioStreamOggVorbis broken in Godot 4 alpha
	var ogg_file = FileAccess.open(path, FileAccess.READ)
	var bytes = ogg_file.get_buffer(ogg_file.get_length())
	var stream = AudioStreamOggVorbis.new()
	stream.data = bytes 
	emit_signal("loaded_file")
	ogg_file = null
	return stream


func load_external_godot_resource(path):
	var resource = ResourceLoader.load(path)
	return resource

