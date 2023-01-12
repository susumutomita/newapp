//
//  y_service.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/12/28.
//

import Foundation
import Alamofire

class Y_service :Service_base{
    let repository = Y_repository()
    let env = Environment()
    func open() {
        print(env.Env["Y_TARGET_URL"])
        let parameters: [String: Any] = [    "username": "user1",    "password": "pass1"]
        AF.request("https://example.com", method: .post, parameters: parameters, encoding: JSONEncoding.default).response{ response in
            switch response.result {
            case .success(let value):
                print(value!)
            case .failure(let error):
                print(error)
            }
        }
    }

}
