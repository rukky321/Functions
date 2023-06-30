#> rukky-func:liner_search/sample
#
# @private

data modify storage rukky-func: liner_search.array set value [{id:1},{id:2},{id:3},{id:4},{id:5}]
scoreboard players set #linear_search.target rukky.func 3
function rukky-func:liner_search/search

# if array does not include target value, score #linear_search.input rukky.func is -1
# 
#  
