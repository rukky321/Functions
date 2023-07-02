#> rukky-func:modify_inventory/helper/27_30
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky.func matches 27 run function rukky-func:modify_inventory/helper/27
execute if score #modify_inventory.slot rukky.func matches 28 run function rukky-func:modify_inventory/helper/28
execute if score #modify_inventory.slot rukky.func matches 29..30 run function rukky-func:modify_inventory/helper/29_30
