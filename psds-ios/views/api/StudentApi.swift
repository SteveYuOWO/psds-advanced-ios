//
//  Student.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/10/19.
//

import SwiftUI

class StudentApi {
    func getStudent(completion: @escaping ([Student])->()) {
        guard let url = URL(string: "http://steveyu.cn:8080/psds/api/student/0/1000")
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
                let studentData = try JSONDecoder().decode(PageData<Student>.self, from: data)
                DispatchQueue.main.async {
                    completion(studentData.content)
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}


