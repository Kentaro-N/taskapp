//
//  Task.swift
//  taskapp
//
//  Created by 西方健太郎 on 2021/01/16.
//  Copyright © 2021 idea. All rights reserved.
//

import RealmSwift

class Task: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0
    
    // カテゴリ
    @objc dynamic var category = ""
    
    // タイトル
    @objc dynamic var title = ""

    // 内容
    @objc dynamic var contents = ""

    // 日時
    @objc dynamic var date = Date()

    // id をプライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
}
