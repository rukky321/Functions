#> rukky-func:get_inventory/helper/18_20
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 18 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:18b}]
execute if score #get_inventory.slot rukky-func matches 19 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:19b}]
execute if score #get_inventory.slot rukky-func matches 20 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:20b}]
