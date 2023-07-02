#> rukky-func:modify_inventory/helper/18_25
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky.func matches 18..20 run function rukky-func:modify_inventory/helper/18_20
execute if score #modify_inventory.slot rukky.func matches 21 run function rukky-func:modify_inventory/helper/21
execute if score #modify_inventory.slot rukky.func matches 22..25 run function rukky-func:modify_inventory/helper/22_25
