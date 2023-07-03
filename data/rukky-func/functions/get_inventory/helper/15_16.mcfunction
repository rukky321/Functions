#> rukky-func:get_inventory/helper/15_16
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 15 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:15b}]
execute if score #get_inventory.slot rukky-func matches 16 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:16b}]
