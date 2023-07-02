#> rukky-func:linear_search/search
# @input storage rukky-func linear_search.array (target array)
# @input score #linear_search.target rukky.func (target value)
# @input score #linear_search.key rukky.func (key to check. 0:id , 1:Slot)
# @output storage rukky-func linear_search.data 
# @output score #linear_search.index rukky.func (the index of the first occurrence of target value in the array. if array does not has target value, this value is -1)
# @public

# #linear_search.keyが設定されていない場合に0に設定
execute unless score #linear_search.key rukky.func matches -2147483648..2147483647 run scoreboard players set #linear_search.key rukky.func 0

# 前回のアウトプットを初期化
scoreboard players reset #linear_search.index rukky.func
data remove storage rukky-func linear_search.data

# 対象となる配列の長さを取得
execute store result score #linear_search.len rukky.func run data get storage rukky-func linear_search.array

# idが一致するか、ループ回数が配列の長さを超えるまでループ用の関数を実行
scoreboard players set #linear_search.count rukky.func 0
function rukky-func:linear_search/helper/loop

# 一度outputのindexを-1に設定。idが一致していなければこれがこのまま出力に、一致していればcountの値がこれに足されるので、正しいindexの数値になる。
scoreboard players set #linear_search.index rukky.func -1

# ループ後にidが一致していれば、arrayの先頭要素が目的のデータになるので、それに合わせてoutputを設定
execute if score #linear_search.id rukky.func = #linear_search.target rukky.func run data modify storage rukky-func linear_search.data set from storage rukky-func linear_search.array[0]
execute if score #linear_search.id rukky.func = #linear_search.target rukky.func run scoreboard players operation #linear_search.index rukky.func += #linear_search.count rukky.func

# 使用したスコアをリセットする
scoreboard players reset #linear_search.count rukky.func
scoreboard players reset #linear_search.id rukky.func
scoreboard players reset #linear_search.len rukky.func
scoreboard players reset #linear_search.target rukky.func
scoreboard players reset #linear_search.key rukky.func

# 使用したストレージをリセットする
data remove storage rukky-func linear_search.array


# スコアホルダーを定義する部分
#>
# input value of rukky-func:linear_search/search
# @public
#define score_holder #linear_search.target
#>
# input value of rukky-func:linear_search/search 
# @public
#define score_holder #linear_search.key
#>
# output value of rukky-func:linear_search/search
# @public
#define score_holder #linear_search.index

#>
# @within rukky-func:linear_search/**
  #define score_holder #linear_search.len
  #define score_holder #linear_search.count
  #define score_holder #linear_search.id