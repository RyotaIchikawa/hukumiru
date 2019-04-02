<img width="1185" alt="README" src="https://user-images.githubusercontent.com/
  45367123/55389724-c4534380-5570-11e9-9ee6-7cac93b253bf.png">


# アプリ名

hukumiru



# 作者

市川　良太
（Ryota Ichikawa）



# 使用環境とGem、version

・環境
Ruby  2.4.1
Rails 5.1.6
git   2.14.5
node  8.0.0

・️Gem
devise
kaminari  0.17.0
carrierwave 1.2.2
mini_magick 4.7.0



# アプリの用途

「持っている服をいつでもどこでも管理・閲覧」するアプリです。

1枚ずつ服を撮影、または既に撮ってある写真を投稿することで、
・服の合計枚数
・どんな服を持っているか
・買う服と似たような服を持っていなかったか
・今足りない服は何か
を確認することができます。
          
また、
・単純に持っている服を眺めていたい
・他のユーザーと共有したい
という場合にも使用できるように、見やすいレイアウトにしました。
          
対象ユーザーは、
①服が好きなヤング層の方
②無駄なものを持ちたくないミニマリスト思考の方
としています。



# アプリの使い方

①【トップページ】より、新規登録（ログイン）します。
②新規登録・ログイン、ヘッダー「ロゴ」「投稿する」で
  【投稿ページ】に移動します。
  １）「ふくをえらぶ」で服の画像を選択します。
  ２）「Tシャツ」と書かれたセレクタから服のジャンルを選択します。
  ３）「ぶらんど」欄に服のブランド名を記載します。
      （不明の場合は空欄でも投稿可）
  ４）「とうこうする」で投稿します。
  ５）「これくしょん」で【ユーザー詳細ページ】に移動します。
③【投稿ページ】「これくしょん」、ヘッダー「ぷろふぃーる」で
　【ユーザー詳細ページ】に移動します。
  １）「へんしゅう」で【編集ページ】に移動します。
      ユーザー情報の編集・退会処理ができます。
  ２）「とうこうする」で【投稿ページ】へ移動します。
  ３）投稿数が「〇〇まい」と表示され、過去に投稿した写真一覧が閲覧できます。
      パソコンサイズ：横３枚ずつ
      スマホサイズ　：　１枚ずつ
  ４）「捨てる」で削除します。
④ヘッダー「ゆーざー」で【ユーザー一覧ページ】に移動します。
⑤ヘッダー「ろぐあうと」でログアウトし、トップページに戻ります。

        
        
# 主な参考ページ

・Ruby on Rails Tutorial
https://railstutorial.jp/


（Gem）
・Github devise
https://github.com/plataformatec/devise

・[Rails] deviseの使い方（rails5版）
https://qiita.com/cigalecigales/items/f4274088f20832252374

・【Ruby on Rails】gem(Kaminari)でページネーション機能を追加してBootstrapを適用する。
https://qiita.com/residenti/items/1ae1e5ceb59c0729c0b9

・Github carrierwave
https://github.com/carrierwaveuploader/carrierwave

・Github minimagick
https://github.com/minimagick/minimagick


（フォント）
・日本語フリーフォントの「ふい字」をWEBフォントで活用しよう！
http://customtemplate.blog112.fc2.com/blog-entry-143.html


（Bootstrap）
・Bootstrapのグリッドシステムの使い方を初心者に向けておさらいする
http://websae.net/twitter-bootstrap-grid-system-21060224/


（レスポンシブデザイン）
・もう逃げない。HTMLのviewportをちゃんと理解する
https://qiita.com/ryounagaoka/items/045b2808a5ed43f96607