#> rukky-func:linear_search/helper/loop
#
# @within rukky-func:linear_search/search
# @within rukky-func:linear_search/helper/loop

# カウントを増やす
scoreboard players add #linear_search.count rukky.func 1

# 現在のarray[0]のidを取得。
execute store result score #linear_search.id rukky.func run data get storage rukky-func: linear_search.array[0].id

# idが一致せず、カウントが配列の大きさより小さければ、配列をずらし再度ループを行う
execute unless score #linear_search.id rukky.func = #linear_search.target rukky.func if score #linear_search.count rukky.func < #linear_search.count rukky.func run function rukky-func:linear_search/helper/move
execute unless score #linear_search.id rukky.func = #linear_search.target rukky.func if score #linear_search.count rukky.func < #linear_search.count rukky.func run function rukky-func:linear_search/helper/loop