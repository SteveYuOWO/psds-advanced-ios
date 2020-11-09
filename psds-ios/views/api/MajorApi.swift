//
//  Major.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI





class MajorApi {
    func getMajors(completion: @escaping ([Major])->()) {
        guard let url = URL(string: "http://steveyu.cn:8080/psds/api/major/0/1000")
        else {
            print("fatal error: get Posts Wrong, see Data.swift")
            return
        }
        let task = URLSession.shared.dataTask(with: url) {(data, response, err) in
            guard let data = data else {
                print("URL Session: data is none")
                return
            }
            do {
                let majorData = try JSONDecoder().decode(PageData<Major>.self, from: data)
                DispatchQueue.main.async {
                    completion(majorData.content)
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
