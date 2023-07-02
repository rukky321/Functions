#> rukky-func:modify_inventory/helper/16
#
# @within rukky-func:modify_inventory/**

execute store result score #modify_inventory.success rukky.func run item replace entity @s inventory.7 from entity @e[tag=rukky-func.modify_inventory,limit=1] weapon.mainhand
