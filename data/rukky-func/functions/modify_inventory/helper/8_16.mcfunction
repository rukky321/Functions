#> rukky-func:modify_inventory/helper/8_16
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky-func matches 8..11 run function rukky-func:modify_inventory/helper/8_11
execute if score #modify_inventory.slot rukky-func matches 12 run function rukky-func:modify_inventory/helper/12
execute if score #modify_inventory.slot rukky-func matches 13..16 run function rukky-func:modify_inventory/helper/13_16
