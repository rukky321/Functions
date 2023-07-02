#> rukky-func:modify_inventory/helper/32_35
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches 32 run function rukky-func:modify_inventory/helper/32
execute if score #modify_inventory.slot rukky-func matches 33 run function rukky-func:modify_inventory/helper/33
execute if score #modify_inventory.slot rukky-func matches 34..35 run function rukky-func:modify_inventory/helper/34_35
