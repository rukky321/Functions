#> rukky-func:get_inventory/get
# @input score #get_inventory.slot rukky-func (target slot number)
# @output storage rukky-func:get_inventory data (item data)
# @output score #get_inventory.success rukky-func (whether the item exists in the specified slot. 0: not exist  1:exist)
# @private

# 出力データを削除
data remove storage rukky-func:get_inventory data
scoreboard players reset #get_inventory.success rukky-func

# 指定されたインベントリに応じて操作を行う
execute if score #get_inventory.slot rukky-func matches 0..35 run function rukky-func:get_inventory/helper/0_35
execute if score #get_inventory.slot rukky-func matches 100..103 run function rukky-func:get_inventory/helper/100_103
execute if score #get_inventory.slot rukky-func matches -106 run function rukky-func:get_inventory/helper/-106

# SelectedItemなどと同じ形式にしておきたいのでSlotのデータは消す
execute if data storage rukky-func:get_inventory data run data remove storage rukky-func:get_inventory data.Slot

# スコアをリセットする
scoreboard players reset #get_inventory.slot

# スコアホルダーを定義する部分
#>
# output value of rukky-func:get_inventory/get
# @public
#define score_holder #get_inventory.success
#>
# input value of rukky-func:get_inventory/get
# @public
#define score_holder #get_inventory.slot
