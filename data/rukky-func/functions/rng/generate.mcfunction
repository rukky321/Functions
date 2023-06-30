#> rukky-func:rng/generate
#
#	@input score #rng.max rukky-func output is less than this value.
# @output score #rng.num rukky-func random number. min value is 0. if #rng.max is less than 1, this value is always 0.
# @public

# インプット値が不正な値である場合の処理
execute unless score #rng.max rukky.func matches -2147483648..2147483647 run scoreboard players set #rng.max rukky.func 100
execute if score #rng.max rukky.func matches -2147483648..0 run scoreboard players set #rng.max rukky.func 1

# 乱数生成
summon area_effect_cloud ~ ~ ~ {Tags:["rukky-func_rng"]}
execute store result score #rng.num rukky.func run data get entity @e[tag=rukky-func_rng,limit=1] UUID[0]
execute if score #rng.num rukky.func matches ..-1 run scoreboard players operation #rng.num rukky.func *= #-1 rukky.func
scoreboard players operation #rng.num rukky.func %= #rng.max rukky.func

# 生成に使用したAECをキル
kill @e[tag=rukky-func_rng]

# インプット用スコアをリセット
scoreboard players reset #rng.max rukky.func

# スコアホルダーを定義する部分
#>
# input value of rukky-func:rng/generate
# @public
#define score_holder #rng.max 
#>
# output value of rukky-func:rng/generate
# @public
#define score_holder #rng.num