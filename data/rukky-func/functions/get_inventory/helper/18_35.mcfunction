#> rukky-func:get_inventory/helper/18_35
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 18..25 run function rukky-func:get_inventory/helper/18_25
execute if score #get_inventory.slot rukky-func matches 26 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:26b}]
execute if score #get_inventory.slot rukky-func matches 27..35 run function rukky-func:get_inventory/helper/27_35
