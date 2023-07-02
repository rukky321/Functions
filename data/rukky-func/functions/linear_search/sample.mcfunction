#> rukky-func:linear_search/sample
#
# @private

# [{id:1,text:"A"},{id:2,text:"B"},{id:3,text:"C"},{id:4,text:"D"}]という配列から{id:3}のデータを探す
data modify storage rukky-func linear_search.array set value [{id:1,text:"A"},{id:2,text:"B"},{id:3,text:"C"},{id:4,text:"D"}]
scoreboard players set #linear_search.target rukky.func 3
scoreboard players set #linear_search.key rukky.func 0
function rukky-func:linear_search/search

# result is "C"
data get storage rukky-func linear_search.data.text