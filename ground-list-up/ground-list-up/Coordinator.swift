//
//  Coordinator.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/12/25.
//

import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    var parent:ImagePicker
    
    init(_ parent:ImagePicker){
        self.parent = parent
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[.originalImage] as! UIImage
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil )
        parent.image = Image(uiImage: uiImage.redraw())
        parent.isPicking = false
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        parent.isPicking = false
    }
   
    
}
