#> rukky-func:get_inventory/helper/6_7
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 6 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:6b}]
execute if score #get_inventory.slot rukky-func matches 7 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:7b}]
