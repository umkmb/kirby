#!/bin/sh

# カービィの仲間たち

# 引数があるか確認
if [ $# -ne 0 ]; then
    #引数のオプションの処理
    if [ $1 = "-b" ]; then
        # bourbon
        cat ./data/bourbon.txt

    elif [ $1 = "-e" ]; then
        # waddle dee
        cat ./data/waddle_dee.txt

    elif [ $1 = "-o" ]; then
        # waddle doo
        cat ./data/waddle_doo.txt

    elif [ $1 = "-w" ]; then
        cat ./data/kirby_w.txt

    elif [ $1 = "-g" ]; then
        cat ./data/gordo.txt

    else
        # help の表示
        echo "show kirby [option]"

        echo "-b Bourbon (プププランドの地面によく刺さってる「アレ」)"
        echo "-e Waddle dee"
        echo "-g Gordo"
        echo "-o Waddle doo"
        echo "-w ('o')v"
        echo "other help"
        exit 1
    fi

else
    # 引数がないときはカービィを表示する
    cat ./data/kirby.txt
fi