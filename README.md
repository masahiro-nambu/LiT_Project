# LiT_Project仕様書

##1. サービス概要
どうしても痩せたいが、一人では運動を続けられない人が毎日続けられるようにするアプリ。  
最初に写真（顔、身体）を保存して毎日の目標を決め、ダイエットスタートしたことをTwitterで報告。目標をこなしたら「完了ボタン」を押す。押さない日があれば、最初に保存した写真がTwitterに投稿される。

##2. ユーザーシナリオ
またダイエットが続かなかった...  
毎日やると決めても、最初の熱意が冷めてしまう...  
一人だと続かない...  
でもどうしても痩せたい！！  
→じゃあ、やらないといけない環境をムリやり作ろう！  


##3. 機能一覧
-毎日やる運動・食事などのタスクを入力  
-カメラ・アルバムから写真を保存  
-ダイエット始めたことをTwitterに投稿  
-タスクをこなしたら「完了ボタン」  
-毎日夜12時に「完了ボタン」が押されていなかったらTwitterに写真を投稿  

##4. 使用技術
-NSUserDefaultを用いてタスクを保存。  
-NSTimerで毎日12時にタスクのdoneがtrueになっているかを確認し、falseだったらTwitterに投稿する。  
-SLComposeViewControllerでTwitterに投稿する。  

##5. テーマカラー
冷静になる・食欲が抑えられる青色。

##6. シンボル
コツコツ積み重ねていくイメージで階段。

![app_simbol](app_simbol)


##7. 画面一覧
https://prottapp.com/p/83438b

##8. 類似サービス
-Wunderkust
タスクの共有、コメント、リマインダ、期日設定ができる。スマホ（iOS、Android）、PC（Mac、Windows）、タブレットなどからも利用可能。  
*Trello
タスクをビジュアル化しやすい。  
-Nozbe  
-Todolist
-Toodledo  
タスク管理アプリはビジュアルの差程度？？  
-BeCalender  
摂取カロリー、消費カロリーを管理できる。体重変化を記録したり、目標設定もできる。
-RIZAP
2ヶ月（1回50分×16回、食事管理など）で35万円ほど。

##9. 参考サイト

-NSUserDefaultについて
http://qiita.com/Nietzsche/items/ed347f6eafd1bdb0bc51  

-NSTimerについて
http://tech.admax.ninja/2014/09/17/how-to-use-nstimer/

-SLComposeViewControllerについて
http://qiita.com/kilhyungdoo/items/dcdcf9cecea6d78f1093

-Wunderlistについて
https://jp.appbase.info/wunderlist/

-Trelloについて
http://www.lifehacker.jp/2015/02/150226trello_organize.html
