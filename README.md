# Functions
データパック作成にあたり、乱数やプレイヤのインベントリ操作などの何度も使うことになる関数を保存しておく場所

## 目次


## 利用可能なバージョン
1.20で動作確認中。

## 導入方法
2通りの方法があります。   
1. このデータパックをそのまま利用したいワールドのdatapackフォルダーに入れる。
2. "data/rukky-func"フォルダーを利用したいデータパックフォルダーの"data"フォルダー内にコピーし、"data/minecraft/tags/functions/load.json"内に"rukky-func:load"を追加する。

## 基本的な使い方
各関数に設定されている入力値を設定し、`function #rukky-func:<使いたい関数>`を実行することで利用可能です。  
入力値は関数を呼び出す度に削除されてしまうので、呼び出し後にも使う場合にはあらかじめコピーを取っておいてください。 

## 利用できる関数
### サンプル
各関数の記法を以下に示す。
  ### <関数名> (関数の内容)
  
  - #### 概要
    
  関数の概要

  - #### 入出力
    
    | 種類 | 名称 |  概要  |
    | :---: | :---: | :---: |
    |  score  |  <スコアホルダー> <スコア名>  |  内容  |
    |  storage  |  <ストレージ名> <データのパス>  |  内容  |

### 関数一覧

- ### rng (乱数生成)
  
  - #### 概要
    
    最小値を0とした乱数を生成する。

  - #### 入力
    
    | 種類 | 名称 |  概要  |
    | :---: | :---: | :---: |
    |  score  |  `#rng.max rukky-func`  |  生成する乱数の最大値。乱数はこの数値未満の値になる。<br>0以下の値を指定した場合、乱数は全て0になる。  |  

  - #### 出力
    
      | 種類 | 名称 |  概要  |
    | :---: | :---: | :---: |
    |  score  |  `#rng.num rukky-func`  |  生成された乱数  |
  
  - #### 使用例
    
    ``` ex_rng.mcfunction
    # 0から99の乱数を生成し、生成した乱数が0から9の範囲であれば（10%の確率）、yesと表示する。
    scoreboard players set #rng.max rukky-func 100
    function #rukky-func:rng
    execute if score #rng.num rukky-func matches 0..9 run say yes
    ```
    <br>
  
- ### get_inventory (指定スロットのアイテムデータの取得)
  
  - #### 概要
    
    この関数を実行したプレイヤが指定したスロットに持っているアイテムのデータを取得する。
    後述する関数[modify_inventory](#modify_inventory-指定スロットのアイテムデータの編集)と合わせて使うことを想定。
  
  - #### 入力
    
      | 種類 | 名称 |  概要  |
    | :---: | :---: | :---: |
    |  score  |  `#get_inventory.slot rukky-func`  |  アイテムデータを取得したいスロットの番号  |

  - #### 出力
    
    | 種類 | 名称 |  概要  |
    | :---: | :---: | :---: |
    |  score  |  `#get_inventory.success rukky-func`  |  スロットにデータが存在したか。アイテムがなかったり、<br>スロットが存在しなければ0、アイテムが存在すれば1を出力する。  |
    |  storage  |  `rukky-func:get_inventory data`  |  指定したスロットに存在するアイテムのデータ  |

  - #### 使用例
    
    ``` ex_get_inventory.mcfunction
    # 一番近くのプレイヤのホットバーの一番左にあるアイテムのデータを取得し、データが存在すればnone、存在すればそのアイテム名を出力する
    scoreboard players set #get_inventory.slot rukky-func 0
    execute as @p run function #rukky-func:get_inventory
    execute if score #get_inventory.success rukky-func matches 0 run say none
    execute unless score #get_inventory.success rukky-func matches 0 run tellraw @a {"nbt":"data.id","storage":"rukky-func:get_inventory"}
    ```

  - #### 詳細
    
    出力ストレージ`rukky-func:get_inventory data`に格納されるデータは`data get entity @s Inventory[Slot:{<スロット番号>}]`で得られるデータから{Slot:<スロット番号>}のデータを消したものである。そのため、`data get entity @s SelectedItem`などを用いて得られる形式と同じになり、armor_standのHandItemsなどのデータにそのまま代入することができる。

  <br>
  
- ### modify_inventory (指定スロットのアイテムデータの編集)
  
  - #### 概要
    
    この関数を実行したプレイヤが指定したスロットに持っているアイテムのデータを編集する。
  
  - #### 入力
    
    | 種類 | 名称 |  概要  |
    | :---: | :---: | :---: |
    |  score  |  `#modify_inventory.slot rukky-func`  |  アイテムデータを編集したいスロットの番号  |
    |  storage  |  `rukky-func:modify_inventory data`  |  変更後のデータ  |

  - #### 出力

    | 種類 | 名称 |  概要  |
    | :---: | :---: | :---: |
    |  score  |  `#modify_inventory.success rukky-func`  |  データの変更に成功したか。指定したデータが不正な値であったり、<br>スロットが存在しなければ0、変更に成功すれば1を出力する。  |

  - #### 使用例1
    
    ``` ex1_modify_inventory.mcfunction
    # 一番近くのプレイヤのホットバーの一番左にあるアイテムを火属性1のエンチャントがついた金の剣にする
    scoreboard players set #modify_inventory.slot rukky-func 0
    data modify storage rukky-func:modify_inventory data set value {id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}}
    execute as @p run function #rukky-func:modify_inventory
    ```

  - #### 使用例2
    
    ``` ex2_modify_inventory.mcfunction
    # 一番近くのプレイヤのホットバーの一番左にあるアイテムの個数を64個にする。
    scoreboard players set #get_inventory.slot rukky-func 0
    execute as @p run function #rukky-func:get_inventory

    scoreboard players set #modify_inventory.slot rukky-func 0
    data modify storage rukky-func:modify_inventory data set from storage rukky-func:get_inventory data
    data modify storage rukky-func:modify_inventory data.Count set value 64b

    execute as @p run function #rukky-func:modify_inventory
    ```



