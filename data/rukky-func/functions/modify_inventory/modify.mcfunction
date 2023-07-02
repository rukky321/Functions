#> rukky-func:modify_inventory/modify
# @input score #modify_inventory.slot rukky.func (target slot number -1:mainhand, -106:offhand, 100~103:feet~head)
# @input storage rukky-func modify_inventory.data (item data)
# @output score #get_inventory.success rukky.func (success or not 0:not success  1:success)
# @public

# 出力データを削除
scoreboard players reset #modify_inventory.success rukky.func

# 防具立てを召喚する
summon armor_stand 0 -10000 0 {Tags:["rukky-func.modify_inventory"]}

# 防具立てのmainhandに入力データを移す。これに失敗した場合は出力を0にして編集操作を行わない
execute store success score #modify_inventory.success rukky.func run data modify entity @e[tag=rukky-func.modify_inventory,limit=1] HandItems[0] set from storage rukky-func modify_inventory.data

# スロットに合わせて操作を行う
execute unless score #modify_inventory.success rukky.func matches 0 if score #modify_inventory.slot rukky.func matches -1..35 run function rukky-func:modify_inventory/helper/-1_35
execute unless score #modify_inventory.success rukky.func matches 0 if score #modify_inventory.slot rukky.func matches -106 run function rukky-func:modify_inventory/helper/-106
execute unless score #modify_inventory.success rukky.func matches 0 if score #modify_inventory.slot rukky.func matches 100..103 run function rukky-func:modify_inventory/helper/100_103

# 該当するスロットがなければ出力を0に設定
execute unless score #modify_inventory.slot rukky.func matches -1..35 unless score #modify_inventory.slot rukky.func matches -106 unless score #modify_inventory.slot rukky.func matches 100..103 run scoreboard players set #modify_inventory.success rukky.func 0

# 防具立てをキル
kill @e[tag=rukky-func.modify_inventory]

# スコアとストレージをリセット
scoreboard players reset #modify_inventory.slot
data remove storage rukky-func modify_inventory.data

# スコアホルダーを定義する部分
#>
# input value of rukky-func:rng/generate
# @public
#define score_holder #modify_inventory.success
#>
# @public
#define score_holder #modify_inventory.slot



