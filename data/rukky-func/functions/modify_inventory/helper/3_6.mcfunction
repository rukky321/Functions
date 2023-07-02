#> rukky-func:modify_inventory/helper/3_6
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky.func matches 3 run function rukky-func:modify_inventory/helper/3
execute if score #modify_inventory.slot rukky.func matches 4 run function rukky-func:modify_inventory/helper/4
execute if score #modify_inventory.slot rukky.func matches 5..6 run function rukky-func:modify_inventory/helper/5_6
