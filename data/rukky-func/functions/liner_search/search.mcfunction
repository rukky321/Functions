#> rukky-func:liner_search/search
# @input storage rukky-func: liner_search.array (target array)
# @input score #linear_search.target rukky.func (target value)
# @output storage rukky:func liner_search.data 
# @output score #linear_search.return rukky.func (the index of the first occurrence of target value in the array. If array does not has target value, this value is -1)
# @public

# 前回のアウトプットを初期化
scoreboard players reset #linear_search.return rukky.func
data remove storage rukky:func liner_search.data

# 