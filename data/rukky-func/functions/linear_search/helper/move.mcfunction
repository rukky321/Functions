#> rukky-func:linear_search/helper/move
#
# @within rukky-func:linear_search/helper/loop

# 先頭要素を最後尾に移動させる。
data modify storage rukky-func linear_search.array append from storage rukky-func linear_search.array[0]
data remove storage rukky-func linear_search.array[0]
