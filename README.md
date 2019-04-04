
# アプリ名

hukumiru



# 作者

市川　良太<br />
（Ryota Ichikawa）



# 使用環境とGem、version

・環境<br />
Ruby  2.4.1<br />
Rails 5.1.6<br />
git   2.14.5<br />
node  8.0.0<br />

・️Gem<br />
devise<br />
kaminari  0.17.0<br />
carrierwave 1.2.2<br />
mini_magick 4.7.0



# アプリの用途

「持っている服をいつでもどこでも管理・閲覧」<br />
するためのアプリです。<br />

1枚ずつ服を撮影、<br />
または既に撮ってある写真を投稿することで、<br />
・服の合計枚数<br />
・どんな服を持っているか<br />
・買う服と似たような服を持っていなかったか<br />
・今足りない服は何か<br />
を確認することができます。<br />

また、<br />
・単純に持っている服を眺めていたい<br />
・他のユーザーと共有したい<br />
という場合にも使用できるように、<br />
シンプルで見やすく、可愛らしいレイアウトを意識しました。<br />

対象ユーザーは、<br />
①服が好きなヤング層の方<br />
②無駄なものを持ちたくないミニマリスト思考の方<br />
としています。



# アプリの使い方

①【トップページ】より、新規登録（ログイン）します。<br />

②新規登録・ログイン、又はヘッダー「ロゴ」「投稿する」より、<br />
  【投稿ページ】に移動します。<br />
<br />
  １）「ふくをえらぶ」より、服の画像を選択します。<br />
  ２）「Tシャツ」と書かれたセレクタより、服のジャンルを選択します。<br />
  ３）「ぶらんど」欄に服のブランド名を記載します（不明の場合は空欄でも投稿可）<br />
  ４）「とうこうする」より、投稿します。<br />
  ５）「これくしょん」より、【ユーザー詳細ページ】に移動します。<br />
<br />
③【投稿ページ】「これくしょん」、又はヘッダー「ぷろふぃーる」より、<br />
　【ユーザー詳細ページ】に移動します。<br />
<br />
  １）「へんしゅう」より、【編集ページ】に移動します。<br />
      ユーザー情報の編集・退会処理ができます。<br />
  ２）「とうこうする」より、【投稿ページ】へ移動します。<br />
  ３）投稿数が「〇〇まい」と表示され、
      過去に投稿した写真一覧が閲覧できます。<br />
      パソコンサイズ：横３枚ずつ<br />
      スマホサイズ　：　１枚ずつ<br />
  ４）「捨てる」より、削除します。<br />
<br />
④ヘッダー「ゆーざー」より、
  【ユーザー一覧ページ】に移動します。<br />
<br />
⑤ヘッダー「ろぐあうと」より、
  ログアウトして【トップページ】に戻ります。

        
        
# 主な参考ページ

・Ruby on Rails Tutorial<br />
https://railstutorial.jp/<br />


（Gem）<br />
・Github devise<br />
https://github.com/plataformatec/devise<br />

・[Rails] deviseの使い方（rails5版）<br />
https://qiita.com/cigalecigales/items/f4274088f20832252374<br />

・【Ruby on Rails】gem(Kaminari)でページネーション機能を追加してBootstrapを適用する。<br />
https://qiita.com/residenti/items/1ae1e5ceb59c0729c0b9<br />

・Github carrierwave<br />
https://github.com/carrierwaveuploader/carrierwave<br />

・Github minimagick<br />
https://github.com/minimagick/minimagick<br />


（フォント）<br />
・日本語フリーフォントの「ふい字」をWEBフォントで活用しよう！<br />
http://customtemplate.blog112.fc2.com/blog-entry-143.html<br />


（Bootstrap）<br />
・Bootstrapのグリッドシステムの使い方を初心者に向けておさらいする<br />
http://websae.net/twitter-bootstrap-grid-system-21060224/<br />


（レスポンシブデザイン）<br />
・もう逃げない。HTMLのviewportをちゃんと理解する<br />
https://qiita.com/ryounagaoka/items/045b2808a5ed43f96607