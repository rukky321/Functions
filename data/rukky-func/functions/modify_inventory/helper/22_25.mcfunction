#> rukky-func:modify_inventory/helper/22_25
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches 22 run function rukky-func:modify_inventory/helper/22
execute if score #modify_inventory.slot rukky-func matches 23 run function rukky-func:modify_inventory/helper/23
execute if score #modify_inventory.slot rukky-func matches 24..25 run function rukky-func:modify_inventory/helper/24_25
