//
//  Model.swift
//  ParseJSON
//
//  Created by Danil Peregorodiev on 12.02.2022.
//

import Foundation

struct Lesson: Decodable {
    let id: Int?
    let name: String?
    let date: Date
    let image: String?
    let link: String?
    let comments: [Comment]?
}

struct Comment: Decodable {
    let id: Int
    let text: String
    let date: Date
    let user: User
}

struct User: Decodable {
    let id: Int
    let name: String
    let gender: Gender

}

enum Gender: String, Decodable {
    case male
    case female
}
