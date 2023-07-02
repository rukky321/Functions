#> rukky-func:get_inventory/helper/0_2
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 0 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:0b}]
execute if score #get_inventory.slot rukky-func matches 1 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:1b}]
execute if score #get_inventory.slot rukky-func matches 2 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:2b}]
