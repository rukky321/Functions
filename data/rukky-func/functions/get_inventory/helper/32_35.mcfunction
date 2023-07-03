#> rukky-func:get_inventory/helper/32_35
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 32 store success score #get_inventory.success rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:32b}]
execute if score #get_inventory.slot rukky-func matches 33 store success score #get_inventory.success rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:33b}]
execute if score #get_inventory.slot rukky-func matches 34..35 run function rukky-func:get_inventory/helper/34_35
