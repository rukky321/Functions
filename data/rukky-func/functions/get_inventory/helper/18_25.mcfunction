#> rukky-func:get_inventory/helper/18_25
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky-func matches 18..20 run function rukky-func:get_inventory/helper/18_20
execute if score #get_inventory.slot rukky-func matches 21 store success score #get_inventory.success rukky-func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:21b}]
execute if score #get_inventory.slot rukky-func matches 22..25 run function rukky-func:get_inventory/helper/22_25
