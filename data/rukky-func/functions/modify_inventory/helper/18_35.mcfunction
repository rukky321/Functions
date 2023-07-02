#> rukky-func:modify_inventory/helper/18_35
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches 18..25 run function rukky-func:modify_inventory/helper/18_25
execute if score #modify_inventory.slot rukky-func matches 26 run function rukky-func:modify_inventory/helper/26
execute if score #modify_inventory.slot rukky-func matches 27..35 run function rukky-func:modify_inventory/helper/27_35
