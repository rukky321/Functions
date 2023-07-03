#> rukky-func:get_inventory/helper/0_7
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 0..2 run function rukky-func:get_inventory/helper/0_2
execute if score #get_inventory.slot rukky-func matches 3 store success score #get_inventory.success rukky-func run data modify storage rukky-func:get_inventory data set from entity @s Inventory[{Slot:3b}]
execute if score #get_inventory.slot rukky-func matches 4..7 run function rukky-func:get_inventory/helper/4_7
