//
//  y_service.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/12/28.
//

import Foundation

class Y_service :Service_base{
    let repository = Y_repository()
    func open(){
        let target_url = URL(string: "https://google.com")!
        repository.open_page(url:target_url)
    }
}
