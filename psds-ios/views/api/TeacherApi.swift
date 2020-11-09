//
//  Teacher.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

class TeacherApi {
    func getTeachers(completion: @escaping ([Teacher])->()) {
        guard let url = URL(string: "http://steveyu.cn:8080/psds/api/teacher/0/1000")
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
                let teacherData = try JSONDecoder().decode(PageData<Teacher>.self, from: data)
                DispatchQueue.main.async {
                    completion(teacherData.content)
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
