#> rukky-func:modify_inventory/helper/29
#
# @within rukky-func:modify_inventory/**

execute store result score #modify_inventory.success rukky-func run item replace entity @s inventory.20 from entity @e[tag=rukky-func.modify_inventory,limit=1] weapon.mainhand
