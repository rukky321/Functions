#> rukky-func:get_inventory/helper/100_103
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky.func matches 100 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:100b}]
execute if score #get_inventory.slot rukky.func matches 101 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:101b}]
execute if score #get_inventory.slot rukky.func matches 102 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:102b}]
execute if score #get_inventory.slot rukky.func matches 103 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:103b}]