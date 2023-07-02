#> rukky-func:modify_inventory/helper/17
#
# @within rukky-func:modify_inventory/**

execute store result score #modify_inventory.success rukky.func run item replace entity @s inventory.8 from entity @e[tag=rukky-func.modify_inventory,limit=1] weapon.mainhand
