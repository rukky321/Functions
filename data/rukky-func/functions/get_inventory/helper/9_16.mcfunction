#> rukky-func:get_inventory/helper/9_16
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky.func matches 9..11 run function rukky-func:get_inventory/helper/9_11
execute if score #get_inventory.slot rukky.func matches 12 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:12b}]
execute if score #get_inventory.slot rukky.func matches 13..16 run function rukky-func:get_inventory/helper/13_16
