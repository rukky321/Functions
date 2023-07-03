#> rukky-func:load
#
# @private

#>
# used in rukky-func
# @public
scoreboard objectives add rukky-func dummy

scoreboard players set #-1 rukky-func -1

# ストレージの定義
#>
# used in rukky-func
# @public
  #define storage rukky-func:get_inventory 
  #define storage rukky-func:modify_inventory 
  #define storage rukky-func:linear_search