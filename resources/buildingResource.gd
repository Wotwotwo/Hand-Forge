extends Resource
class_name building

@export var name : String
@export var description : String
@export var sprite : Texture2D
@export var max_hp : int
@export var buildtime : int

@export var cost : Array = []
@export var upgrade_cost : Array = []

@export var active : bool
