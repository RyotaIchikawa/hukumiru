# アプリ名

「hukumiru」<br />

「ログイン」画面に<br />
テスト用ユーザーのアドレス・パスワードを表示しています。<br />
採用担当の方、閲覧の程宜しくお願い致します。<br />

# 環境(バージョン管理)、機能一覧、技術一覧

【環境】<br />
Ruby　2.4.1<br />
Rails 5.1.6<br />
git　 2.14.5<br />
node　8.0.0<br />

【機能】<br />
ログイン機能<br />
ユーザー認証機能<br />
フォロー機能<br />
ページネーション機能<br />
画像投稿機能<br />
お気に入り機能<br />
<br />
他、機能追加中です。<br />

【技術】<br />
使用言語:　　　 Ruby<br />
フレームワーク: Ruby on Rails<br />
セッション管理: Cookie (Deviseより)<br />
データベース:　 PostgreSQL 0.20.0<br />
バージョン管理: Git<br />
リポジトリ管理: GitHub<br />
インフラ:　　　 Heroku<br />

# アプリの用途

「持っている服をいつでもどこでも閲覧」<br />
するアプリです。<br />

1枚ずつ服を撮影し投稿することで、<br />
①服の合計枚数<br />
②どんな服を持っていたか<br />
③買う服と似た服を持っていないか<br />
④足りないジャンルの服は何か<br />
を確認することができます。<br />

また、<br />
⑤お気に入りの服をただ見ていたい<br />
⑥他のユーザーと共有したい<br />
という使用も可能です。<br />

対象ユーザーを<br />
・服が好きなヤング層の方<br />
・無駄なものを持ちたくないミニマリスト思考の方<br />
とし、<br />
シンプルなレイアウトにしています。<br />

# アプリの使い方

「新規登録」「ログイン」後、<br />
またはヘッダー「投稿する」より、<br />
写真【投稿ページ】に移動します。<br />

１）「ふくをえらぶ」より、服の画像を選択します。<br />
２）「Tシャツ」と書かれたセレクタより、服のジャンルを選択します。<br />
３）「ぶらんど」欄に服のブランド名を記載します（不明なら空欄で可）。<br />
４）「とうこうする」より、投稿します。<br />
５）「これくしょん」より、【ユーザー詳細ページ】に移動し閲覧できます。<br />

# 起動方法

①クローン<br />
$ git clone https://github.com/RyotaIchikawa/hukumiru.git<br />

②「ruby」をインストール<br />
$ rbenv versions<br />
$ rbenv install 0.0.0(無いバージョンを入れる)<br />
$ rbenv local 2.3.0(ローカルのバージョンに合わせる)<br />

③ディレクトリ移動<br />
$ cd 〇〇（ディレクトリ名）<br />

④Bundlerを入れ、「Gem」をインストール<br />
$ gem install bundler<br />
$ bundle install<br />

⑤rails用のDB作成・統合<br />
$ rake db:create<br />
$ rake db:migrate<br />

⑥サーバー起動<br />
$ rails s<br />

# 主な参考ページ

・Ruby on Rails Tutorial<br />
https://railstutorial.jp/<br />

【Gem】<br />
・Github devise<br />
https://github.com/plataformatec/devise<br />

・［Rails] deviseの使い方（rails5版）<br />
https://qiita.com/cigalecigales/items/f4274088f20832252374<br />

・［Ruby on Rails］gem(Kaminari)でページネーション機能を追加して<br />
  Bootstrapを適用する。<br />
https://qiita.com/residenti/items/1ae1e5ceb59c0729c0b9<br />

・Github carrierwave<br />
https://github.com/carrierwaveuploader/carrierwave<br />

・Github minimagick<br />
https://github.com/minimagick/minimagick<br />

【フォント】<br />
・日本語フリーフォントの「ふい字」をWEBフォントで活用しよう！<br />
http://customtemplate.blog112.fc2.com/blog-entry-143.html<br />

【Bootstrap】<br />
・Bootstrapのグリッドシステムの使い方を初心者に向けておさらいする<br />
http://websae.net/twitter-bootstrap-grid-system-21060224/<br />

【レスポンシブデザイン】<br />
・もう逃げない。HTMLのviewportをちゃんと理解する<br />
https://qiita.com/ryounagaoka/items/045b2808a5ed43f96607
