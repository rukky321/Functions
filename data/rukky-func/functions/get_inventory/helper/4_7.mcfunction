#> rukky-func:get_inventory/helper/4_7
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky.func matches 4 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:4b}]
execute if score #get_inventory.slot rukky.func matches 5 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:5b}]
execute if score #get_inventory.slot rukky.func matches 6..7 run function rukky-func:get_inventory/helper/6_7
