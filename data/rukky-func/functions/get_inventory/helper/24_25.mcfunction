#> rukky-func:get_inventory/helper/24_25
#
# @within rukky-func:get_inventory/**

execute if score #get_inventory.slot rukky.func matches 24 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:24b}]
execute if score #get_inventory.slot rukky.func matches 25 store success score #get_inventory.exist_data rukky.func run data modify storage rukky-func get_inventory.data set from entity @s Inventory[{Slot:25b}]
