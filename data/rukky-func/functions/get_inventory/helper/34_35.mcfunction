#> rukky-func:get_inventory/helper/34_35
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 34 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:34b}]
execute if score #get_inventory.slot rukky-func matches 35 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:35b}]
