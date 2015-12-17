---
layout: post
title:  "Using the RICOH THETA S With Multiple Languages"
post_author: Jesse Casman
author: Craig Oda
date:   2015-12-16 20:23:17 -0800
categories: API
---
We're sharing information from Japanese information sources. This one on the Qiita site is useful.

http://qiita.com/sandinist/items/9c3a77fdf262513ede3d

開発者向けのページがあり、リファレンスとフォーラムが公開されています。

本ページではGetting Startedを元にしつつ、下記のAPIを実際に叩いた例を示します

    カメラ本体の情報取得 GET /osc/info
    セッション開始 POST /osc/commands/execute camera.startSession
    静止画撮影 POST /osc/commands/execute camera.takePicture
    撮影状態の取得 POST /OSC/state
    ファイル取得 POST /osc/commands/execute camera.getImage
    セッション終了 POST /osc/commands/execute camera.closeSession

基本的にPOSTでJSON形式のパラメタ、レスポンスをやり取りします。
