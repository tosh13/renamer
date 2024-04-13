# renamer
Rename photos and videos as YYMMDD_HHMMSS.ext

# execution folder
sudo mkdir -p /usr/local/bin
sudo chmod +x /usr/local/bin/your_script.sh
mv /Users/tosh/Desktop/rename.sh /usr/local/bin

# story
## 2018.11.4
デジカメ写真を撮影日時のファイル名にリネームする作業をシェルスクリプトでやる。 | toshyonのメモ書き
https://yonetoshi.net/memo/2325/

が元ネタ
`~/Desktop/toPicturesMovies`
に写真類を入れて
`cd ~/Dropbox (Personal)/PROJECTS/ScriptsMac
./rename.sh`
で全てrename完了

そのうち、同一フォルダ内を指定できるようにしてautometerにする
