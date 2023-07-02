#> rukky-func:modify_inventory/helper/8_11
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky.func matches 8 run function rukky-func:modify_inventory/helper/8
execute if score #modify_inventory.slot rukky.func matches 9 run function rukky-func:modify_inventory/helper/9
execute if score #modify_inventory.slot rukky.func matches 10..11 run function rukky-func:modify_inventory/helper/10_11
