#> rukky-func:get_inventory/helper/9_11
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 9 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:9b}]
execute if score #get_inventory.slot rukky-func matches 10 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:10b}]
execute if score #get_inventory.slot rukky-func matches 11 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:11b}]
