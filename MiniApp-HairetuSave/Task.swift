//
//  Task.swift
//  MiniApp-HairetuSave
//
//  Created by 近藤米功 on 2022/04/21.
//

import UIKit
class Task: Codable{
    var detail: String!
    var categoryName: String!
    var photos: String!
    // 初期化
    init(detail: String,categoryName: String,photos: String){
        self.detail = detail
        self.categoryName = categoryName
        self.photos = photos
    }
}
