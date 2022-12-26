//
//  UIImageExtensions.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/12/26.
//

import UIKit

extension UIImage{
    func redraw() -> UIImage{
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size:size,format: format)
            .image {
                context in
                draw(in: CGRect(origin: .zero, size:size))
            }
    }
}
