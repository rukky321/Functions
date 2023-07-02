#> rukky-func:get_inventory/helper/27_30
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky.func matches 27 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:27b}]
execute if score #get_inventory.slot rukky.func matches 28 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:28b}]
execute if score #get_inventory.slot rukky.func matches 29..30 run function rukky-func:get_inventory/helper/29_30
