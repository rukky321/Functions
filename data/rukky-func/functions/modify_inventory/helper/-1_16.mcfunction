#> rukky-func:modify_inventory/helper/-1_16
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky.func matches -1..6 run function rukky-func:modify_inventory/helper/-1_6
execute if score #modify_inventory.slot rukky.func matches 7 run function rukky-func:modify_inventory/helper/7
execute if score #modify_inventory.slot rukky.func matches 8..16 run function rukky-func:modify_inventory/helper/8_16
