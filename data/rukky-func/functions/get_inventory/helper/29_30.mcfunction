#> rukky-func:get_inventory/helper/29_30
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 29 store success score #get_inventory.success rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:29b}]
execute if score #get_inventory.slot rukky-func matches 30 store success score #get_inventory.success rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:30b}]
