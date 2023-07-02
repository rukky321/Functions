#> rukky-func:get_inventory/helper/0_16
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 0..7 run function rukky-func:get_inventory/helper/0_7
execute if score #get_inventory.slot rukky-func matches 8 store success score #get_inventory.exist_data rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:8b}]
execute if score #get_inventory.slot rukky-func matches 9..16 run function rukky-func:get_inventory/helper/9_16
