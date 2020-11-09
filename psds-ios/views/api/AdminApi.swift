//
//  Admin.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

class AdminApi {
    func getAdmins(completion: @escaping ([Admin])->()) {
        guard let url = URL(string: "http://steveyu.cn:8080/psds/api/admin/0/1000")
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
                let adminData = try JSONDecoder().decode(PageData<Admin>.self, from: data)
                DispatchQueue.main.async {
                    completion(adminData.content)
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
