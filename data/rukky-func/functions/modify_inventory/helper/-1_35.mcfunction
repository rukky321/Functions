#> rukky-func:modify_inventory/helper/-1_35
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches -1..16 run function rukky-func:modify_inventory/helper/-1_16
execute if score #modify_inventory.slot rukky-func matches 17 run function rukky-func:modify_inventory/helper/17
execute if score #modify_inventory.slot rukky-func matches 18..35 run function rukky-func:modify_inventory/helper/18_35
