extends CanvasLayer

var inventory:Array[ItemStack]
@onready var gridContainer : GridContainer = get_node("GridContainer")
@onready var recipeVbox : VBoxContainer = get_node("ColorRect/VBoxContainer")

var selected_recipe : Recipe

func _ready():
	self.visible = false
	for i in Recipes._get_recipe():
		var item : Item = i.get_result()
		
		var recipeBtn : Button = Button.new()
		recipeBtn.text = item.item_name
		recipeBtn.icon = item.item_icon
		
		recipeBtn.button_down.connect(
			func set_recipe():
				selected_recipe = i
				recipeBtn.disabled = true
		)
		
		recipeVbox.add_child(recipeBtn)

func _process(delta):
	if(Input.is_action_just_pressed("open_inventory")): self.visible = !self.visible
	

func _on_update_inventory(inventory:Array[ItemStack]):
	self.inventory = inventory
	
	for i in range(inventory.size()):
		if(inventory[i] == null):return
		for j in gridContainer.get_child(i).get_children():
			gridContainer.get_child(i).remove_child(j)
		
		gridContainer.get_child(i).add_child(inventory[i])
	return
	pass # Replace with function body.



func _on_button_pressed():
	if(selected_recipe == null):
		return
	
	var array : Array[Item] = selected_recipe.get_ingredient().filter(func(item: Item):
		for i in inventory:
			var invitem : Item = i._get_item()
			return item._get_id() == invitem._get_id()
	)
	
	if(array.size() == selected_recipe.get_ingredient().size()):
		print("craft")
		
	
	pass # Replace with function body.
