//
//  y_repository.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/12/28.
//

import Foundation
import UIKit

class Y_repository :Repository_base{
    func open_page(url:URL){
        UIApplication.shared.open(url)
    }
}
