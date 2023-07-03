#> rukky-func:get_inventory/helper/27_35
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 27..30 run function rukky-func:get_inventory/helper/27_30
execute if score #get_inventory.slot rukky-func matches 31 store success score #get_inventory.success rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:31b}]
execute if score #get_inventory.slot rukky-func matches 32..35 run function rukky-func:get_inventory/helper/32_35
