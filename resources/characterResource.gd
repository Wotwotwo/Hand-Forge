extends cardData
class_name character

@export var max_hp : int = 20
@export var hp : int = 20
@export var atk : int = 15
@export var def : int = 10
@export var spd : int  = 1.5



@export_enum("Tank", "Swordsman", "Spearman", "Archer")
var role: String = "Swordsman"
