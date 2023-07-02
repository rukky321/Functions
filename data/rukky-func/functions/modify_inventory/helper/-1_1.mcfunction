#> rukky-func:modify_inventory/helper/-1_1
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches -1 run function rukky-func:modify_inventory/helper/-1
execute if score #modify_inventory.slot rukky-func matches 0 run function rukky-func:modify_inventory/helper/0
execute if score #modify_inventory.slot rukky-func matches 1 run function rukky-func:modify_inventory/helper/1
