
extends Node2D

const MOVEMENT_SPEED = 500# pixels per second

var sprite_node
var sp2_node

func _ready():
    sprite_node = get_node("Ship")
    sp2_node = get_node("Ship2")

func _process(delta):
    var direction = Vector2()
    

    if Input.is_action_pressed("ui_left"):
             sp2_node.hide()
             sprite_node.show()
             direction.x = -1.0
             sprite_node.set_flip_v( true )
    elif Input.is_action_pressed("ui_right"):
             sp2_node.hide()
             sprite_node.show()
             direction.x = 1.0
             sprite_node.set_flip_v( false )
    if Input.is_action_pressed("ui_up"):
             sp2_node.show()
             sprite_node.hide()
             direction.y = -1.0
             sp2_node.set_flip_v( false )
    elif Input.is_action_pressed("ui_down"):
             sp2_node.show()
             sprite_node.hide()
             direction.y = 1.0
             sp2_node.set_flip_v( true )

        
          
        
    var velocity = direction * MOVEMENT_SPEED * delta;
    position += velocity

	