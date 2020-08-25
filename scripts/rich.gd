extends RichTextLabel
var page=0
var active=false

func reset():
	page=0
	if  get_parent().get_parent().textos.size() > 0:
		set_bbcode(get_parent().get_parent().textos[page])
		set_visible_characters(0)
		set_process_input(true)

func _ready():
	reset()
	
func _input(event):
	if event.is_action("ui_accept") && active == true:
		if get_visible_characters() > get_total_character_count():
			if page < get_parent().get_parent().textos.size()-1:
				page += 1
				set_bbcode(get_parent().get_parent().textos[page])
				set_visible_characters(0)
		else :
			set_visible_characters(get_total_character_count())

func _on_timer_timeout():
	if active == true:
		set_visible_characters(get_visible_characters()+1)
