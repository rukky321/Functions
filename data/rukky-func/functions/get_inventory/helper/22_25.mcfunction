#> rukky-func:get_inventory/helper/22_25
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 22 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:22b}]
execute if score #get_inventory.slot rukky-func matches 23 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:23b}]
execute if score #get_inventory.slot rukky-func matches 24..25 run function rukky-func:get_inventory/helper/24_25
