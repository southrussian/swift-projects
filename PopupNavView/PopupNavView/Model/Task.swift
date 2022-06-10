//
//  Task.swift
//  PopupNavView
//
//  Created by Danil Peregorodiev on 17.02.2022.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
}

var tasks: [Task] = [
    Task(taskTitle: "Совещание", taskDescription: "Обсудаем задачи на день"),
    Task(taskTitle: "Тренировка", taskDescription: "Сделать упражнения на трицепс"),
    Task(taskTitle: "Вечеринка с друзьями", taskDescription: "Принести попкорн"),
    Task(taskTitle: "Поход в магазин", taskDescription: "Купить хлеб, куриные яйца"),
    Task(taskTitle: "Занятие в университете", taskDescription: "Сходить на пару по экономике"),
    Task(taskTitle: "Поход по магазинам", taskDescription: "Купить новые джинсы")
]
