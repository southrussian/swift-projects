//
//  ViewController.swift
//  ParseJSON
//
//  Created by Danil Peregorodiev on 12.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://icodeschool.ru/json2.php"
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data else {
                return
            }
            
//            let jsonString = String(data: data, encoding: .utf8)
//            print(jsonString)
            do {
                let decoder = JSONDecoder()
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-mm-dd HH:mm:ss"
                decoder.dateDecodingStrategy = .formatted(dateFormatter)
                let lessons = try decoder.decode([Lesson].self, from: data)
                print(lessons.first?.comments?.first?.user.name)

            } catch {
                print(error)
            }

        }.resume()
    }


}

