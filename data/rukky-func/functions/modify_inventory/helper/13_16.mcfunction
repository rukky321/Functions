#> rukky-func:modify_inventory/helper/13_16
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches 13 run function rukky-func:modify_inventory/helper/13
execute if score #modify_inventory.slot rukky-func matches 14 run function rukky-func:modify_inventory/helper/14
execute if score #modify_inventory.slot rukky-func matches 15..16 run function rukky-func:modify_inventory/helper/15_16
