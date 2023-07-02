#> rukky-func:modify_inventory/helper/27_35
#
# @within rukky-func:modify_inventory/**

execute if score #modify_inventory.slot rukky.func matches 100 store result score #modify_inventory.success rukky.func run item replace entity @s armor.feet from entity @e[tag=rukky-func.modify_inventory,limit=1] weapon.mainhand
execute if score #modify_inventory.slot rukky.func matches 101 store result score #modify_inventory.success rukky.func run item replace entity @s armor.legs from entity @e[tag=rukky-func.modify_inventory,limit=1] weapon.mainhand
execute if score #modify_inventory.slot rukky.func matches 102 store result score #modify_inventory.success rukky.func run item replace entity @s armor.chest from entity @e[tag=rukky-func.modify_inventory,limit=1] weapon.mainhand
execute if score #modify_inventory.slot rukky.func matches 103 store result score #modify_inventory.success rukky.func run item replace entity @s armor.head from entity @e[tag=rukky-func.modify_inventory,limit=1] weapon.mainhand