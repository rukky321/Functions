#> rukky-func:get_inventory/helper/0_35
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky.func matches 0..16 run function rukky-func:get_inventory/helper/0_16
execute if score #get_inventory.slot rukky.func matches 17 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:17b}]
execute if score #get_inventory.slot rukky.func matches 18..35 run function rukky-func:get_inventory/helper/18_35
