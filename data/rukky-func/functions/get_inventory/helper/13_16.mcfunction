#> rukky-func:get_inventory/helper/13_16
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky.func matches 13 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:13b}]
execute if score #get_inventory.slot rukky.func matches 14 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:14b}]
execute if score #get_inventory.slot rukky.func matches 15..16 run function rukky-func:get_inventory/helper/15_16
