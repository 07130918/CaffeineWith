# [コーヒーを飲むことにより今日摂取したカフェインの量を記録してくれるアプリCaffeineWith](https://caffeinewith.herokuapp.com/)

見ていただきありがとうございます。佐藤宏太です。よろしくお願いいたします。  
企業様はトップページのドロワーメニューの下から2つ目にゲストログインがありますのでそちらからお願いします。  
位置情報の許可をお願いします。  
またタブを閉じる際にはログアウトをお忘れないよう、お願いします  
  
  
<img width="1128" alt="スクリーンショット 2021-01-20 183804" src="https://user-images.githubusercontent.com/70265286/105156097-bc520280-5b4e-11eb-9d23-86a5c3d7569f.png">


* Ruby 2.5.1 フレームワーク Rails 5.2.4.4

* Database mysql

* デプロイ heroku

* API Geolocation API, Maps JavaScript API, Places API
  
  
## 説明(使い方)  
このアプリはあなたのカフェインの過剰摂取を防ぎます  
コーヒーを飲む際にホーム画面の真ん中のオレンジ色のボタンをクリックし何か感想、その時思い浮かんだアイデアなど好きな文言とともにコーヒーのタイプを選んで投稿してください  
投稿した内容はデータベースに蓄積され24時間以内に400mgのカフェインを摂取した場合警告文が表示されます  
カフェイン摂取量は日本時間の0時にリセットされます  





  
## アプリの機能一覧

* どの店舗でコーヒーを飲んだのかを記録,投稿する機能  

* 投稿をもとに1日のカフェイン摂取量が400mgを超えた時トップページに警告文を表示する機能

* 投稿したユーザーが自分であった場合その投稿を消すことができる機能  

* ユーザー登録,ユーザー情報変更,更新機能  

* ユーザー情報には画像を設定することができます(gem mini_magick)

* ログイン機能,企業様用簡易ログイン機能(gem devise)

* ページネーション機能(gem kaminari)

* 現在地をもとに半径750m以内にあるカフェをマップに表示する機能(api)

##### 例えばmini_magickを利用したユーザー画面ではこのように画像アイコンを設定することができます
他にもgoogle maps apiを使いユーザーごとに位置情報から近くのカフェを調べてくれる機能などもあります
是非使ってみてください

<img width="1128" alt="スクリーンショット 2021-01-20 185230" src="https://user-images.githubusercontent.com/70265286/105158126-fc19e980-5b50-11eb-8fd9-67d2fee86694.png">


佐藤宏太
Email <kotawonderlandjapan@outlook.jp>  
  
  *****


[CaffeineWith, an app that records the amount of caffeine you consume today by drinking coffee](https://caffeinewith.herokuapp.com/)

Thank you for watching. This is Kota Sato.  
Companies have a guest login at the second bottom of the drawer menu on the top page, so please use that.   
Please allow location information.  
Also, please do not forget to log out when closing the tab.

* Ruby 2.5.1 Framework Rails 5.2.4.4

* Database mysql

* Deploy heroku

* API Geolocation API, Maps JavaScript API, Places API

## App function list

* Ability to record and post what you drank at which store

* A function to display a warning message on the top page when the daily intake of caffeine exceeds 400 mg based on the post.

* If the user who posted is yourself, you can delete the post

* User registration, user information change, update function

* You can set an image in the user information (gem mini_magick)

* Login function, simple login function for companies (gem devise)

* Pagination function (gem kaminari)

* Function to display cafes within a radius of 750m on a map based on your current location (api)

Kota Sato
Email <kotawonderlandjapan@outlook.jp>
