#> rukky-func:modify_inventory/helper/-1_6
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches -1..1 run function rukky-func:modify_inventory/helper/-1_1
execute if score #modify_inventory.slot rukky-func matches 2 run function rukky-func:modify_inventory/helper/2
execute if score #modify_inventory.slot rukky-func matches 3..6 run function rukky-func:modify_inventory/helper/3_6
