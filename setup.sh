#!/bin/sh
# カレントディレクトリにある.ファイルのシンボリックリンクをhomeにはる
for dotfile in .[!.]?*
do
  # .gitはスルー
  if [ $dotfile = '.git' ]
  then
    continue
  fi
  ln -Fis "$PWD/$dotfile" $HOME
done
